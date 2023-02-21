import requests


installations_request = requests.get("https://api.gbif.org/v1/installation?limit=1000")
installations_data = installations_request.json()

datasets = ({'ALL': 0,
             'IPT_INSTALLATION': 0,
             'DIGIR_INSTALLATION': 0,
             'TAPIR_INSTALLATION': 0,
             'BIOCASE_INSTALLATION': 0,
             'HTTP_INSTALLATION': 0,
             'SYMBIOTA_INSTALLATION': 0,
             'EARTHCAPE_INSTALLATION': 0
             })

datasets['ALL'] = installations_data['count']

for installation in installations_data['results']:
    print("-------------------------------------------")
    installation_key = installation['key']
    print("Processing {item}".format(item=installation_key))
    print("https://registry.gbif.org/installation/{installationKey}".format(installationKey=installation_key))

    installation_type = installation['type']
    datasets[installation_type] += 1


print("-------------------------------------------")
print(datasets)
