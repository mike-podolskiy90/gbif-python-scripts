import requests
import xml
import xml.etree.ElementTree as ET


def get_version(full_version):
    # may contain SNAPSHOT or r${buildNumber}
    # build number length varies
    return full_version[9:len(full_version) - (len(full_version) - full_version.rfind('-'))]


def check_installations_datasets(installation_key):
    installation_datasets_request \
        = requests.get("https://api.gbif.org/v1/installation/{installationKey}/dataset"
                       .format(installationKey=installation_key))
    installation_datasets_data = installation_datasets_request.json()

    number_of_datasets = installation_datasets_data['count']
    print("Number of datasets: {number_of_datasets}".format(number_of_datasets=number_of_datasets))

    if number_of_datasets == 0:
        print("There are no datasets associated with the installation!")


installations_request = requests.get("https://api.gbif.org/v1/installation?limit=1000&type=IPT_INSTALLATION")
installations_data = installations_request.json()

versions_usage = ({'no_endpoints': 0, 'timeout': 0, 'error_response_code': 0, 'parse_error': 0})

for installation in installations_data['results']:
    print("-------------------------------------------")
    print("Trying {item}".format(item=installation['key']))
    print("https://gbif.org/installation/{installationKey}".format(installationKey=installation['key']))
    endpoints = installation['endpoints']
    print("Number of endpoints: {quantity}".format(quantity=len(endpoints)))

    # Installation should have endpoints
    if len(endpoints) > 0:
        for endpoint in installation['endpoints']:
            endpoint_url = endpoint['url']
            print(endpoint_url)

            try:
                # Set timeout to 4 seconds
                endpoint_data = requests.get(endpoint_url, timeout=4)

                # Process only requests with code 200
                if endpoint_data.status_code != 200:
                    print("GET {url} is {code}, analyzing..."
                          .format(url=endpoint_url, code=endpoint_data.status_code))
                    versions_usage['error_response_code'] = versions_usage['error_response_code'] + 1

                    check_installations_datasets(installation['key'])

                    continue

                content = endpoint_data.content

                # Build xml tree of content
                try:
                    root = ET.fromstring(content)
                except xml.etree.ElementTree.ParseError:
                    print("Parse error")
                    versions_usage['parse_error'] = versions_usage['parse_error'] + 1
                    continue

                # Iterate over tags to find one with the version
                for child in root.iter('*'):
                    if child.tag == 'generator':
                        version = get_version(child.text)

                        if version in versions_usage.keys():
                            versions_usage[version] = versions_usage[version] + 1
                        else:
                            versions_usage[version] = 1

                        print(version)
                        break
            except requests.exceptions.RequestException:
                print("Exception occurred (timeout probably), analyzing...")

                check_installations_datasets(installation['key'])

                versions_usage['timeout'] = versions_usage['timeout'] + 1
    else:
        print("No endpoints provided for the installation '{title}'".format(title=installation['title']))
        versions_usage['no_endpoints'] = versions_usage['no_endpoints'] + 1

sorted_versions_usage = sorted(versions_usage.items(), key=lambda kv: kv[0], reverse=True)

print("-------------------------------------------")
print("Result:")

for item in sorted_versions_usage:
    print("'{i1}': {i2}".format(i1=item[0], i2=item[1]))
