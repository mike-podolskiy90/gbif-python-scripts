import requests
import xml
import xml.etree.ElementTree as ET


def get_version(full_version):
    # may contain SNAPSHOT or r${buildNumber}
    # build number length varies
    version_split_array = full_version.split('-', 3)
    ipt_version_with_text = version_split_array[0]
    prefix = 'GBIF IPT '

    return ipt_version_with_text[len(prefix):]


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

analyzing_result = ({'no_endpoints': 0, 'timeout': 0, 'error_response_code': 0, 'parse_error': 0, 'triggered': 0})

for installation in installations_data['results']:
    print("-------------------------------------------")
    print("Trying {item}".format(item=installation['key']))
    print("https://registry.gbif.org/installation/{installationKey}".format(installationKey=installation['key']))
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
                    analyzing_result['error_response_code'] = analyzing_result['error_response_code'] + 1

                    check_installations_datasets(installation['key'])

                    continue

                content = endpoint_data.content

                # Build xml tree of content
                try:
                    root = ET.fromstring(content)
                except xml.etree.ElementTree.ParseError:
                    print("Parse error")
                    analyzing_result['parse_error'] = analyzing_result['parse_error'] + 1
                    continue

                # Iterate over tags to find one with the version
                for child in root.iter('*'):
                    if child.tag == '{http://ipt.gbif.org/}eml':
                        eml_url = child.text
                        # eml_url = "https://cloud.gbif.org/asia/eml.do?r=dayo_invasive_alien_reptiles_in_the_philippines"

                        # Set timeout to 4 seconds
                        print("requesting eml")
                        print(eml_url)
                        eml_data = requests.get(eml_url, timeout=4)

                        # Build xml tree of EML content
                        try:
                            eml = ET.fromstring(eml_data.content)
                        except xml.etree.ElementTree.ParseError:
                            print("EML parse error")
                            analyzing_result['parse_error'] = analyzing_result['parse_error'] + 1
                            continue

                        try:
                            is_personnel_present = 0
                            is_project_present = 0

                            for eml_child in eml.iter('*'):
                                if eml_child.tag == 'project':
                                    is_project_present = 1
                                    break

                            if is_project_present == 1:
                                for eml_child in eml.iter('*'):
                                    if eml_child.tag == 'personnel':
                                        is_personnel_present = 1
                                        break

                                if is_personnel_present == 0:
                                    print("TRIGGERED")
                                    print("Found a resource with a project but no project personnel")
                                    analyzing_result['triggered'] = analyzing_result['triggered'] + 1
                        except TypeError:
                            continue
            except requests.exceptions.RequestException:
                print("Exception occurred (timeout probably), analyzing...")

                check_installations_datasets(installation['key'])

                analyzing_result['timeout'] = analyzing_result['timeout'] + 1
    else:
        print("No endpoints provided for the installation '{title}'".format(title=installation['title']))
        analyzing_result['no_endpoints'] = analyzing_result['no_endpoints'] + 1

sorted_result = sorted(analyzing_result.items(), key=lambda kv: kv[0], reverse=True)

print("-------------------------------------------")
print("Result:")

for item in sorted_result:
    print("'{i1}': {i2}".format(i1=item[0], i2=item[1]))
