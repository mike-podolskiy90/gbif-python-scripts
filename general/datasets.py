import requests


installations_request = requests.get("https://api.gbif.org/v1/installation?limit=1000")
installations_data = installations_request.json()

datasets = ({'IPT_INSTALLATION': {'ALL': 0, 'OCCURRENCE': 0, 'CHECKLIST': 0, 'METADATA': 0, 'SAMPLING_EVENT': 0},
             'DIGIR_INSTALLATION': {'ALL': 0, 'OCCURRENCE': 0, 'CHECKLIST': 0, 'METADATA': 0, 'SAMPLING_EVENT': 0},
             'TAPIR_INSTALLATION': {'ALL': 0, 'OCCURRENCE': 0, 'CHECKLIST': 0, 'METADATA': 0, 'SAMPLING_EVENT': 0},
             'BIOCASE_INSTALLATION': {'ALL': 0, 'OCCURRENCE': 0, 'CHECKLIST': 0, 'METADATA': 0, 'SAMPLING_EVENT': 0},
             'HTTP_INSTALLATION': {'ALL': 0, 'OCCURRENCE': 0, 'CHECKLIST': 0, 'METADATA': 0, 'SAMPLING_EVENT': 0},
             'SYMBIOTA_INSTALLATION': {'ALL': 0, 'OCCURRENCE': 0, 'CHECKLIST': 0, 'METADATA': 0, 'SAMPLING_EVENT': 0},
             'EARTHCAPE_INSTALLATION': {'ALL': 0, 'OCCURRENCE': 0, 'CHECKLIST': 0, 'METADATA': 0, 'SAMPLING_EVENT': 0}
             })

for installation in installations_data['results']:
    print("-------------------------------------------")
    installation_key = installation['key']
    print("Processing {item}".format(item=installation_key))
    print("https://registry.gbif.org/installation/{installationKey}".format(installationKey=installation_key))

    installation_type = installation['type']

    installation_datasets_request = requests.get("https://api.gbif.org/v1/installation/{installationKey}/dataset"
                                        .format(installationKey=installation_key))
    installation_datasets_data = installation_datasets_request.json()
    installation_number_of_datasets = installation_datasets_data['count']

    if installation_number_of_datasets > 0:
        for offset in range(0, installation_number_of_datasets, 20):
            installation_datasets_offset_request = requests\
                .get("https://api.gbif.org/v1/installation/{installationKey}/dataset?offset={offset}"
                     .format(installationKey=installation_key, offset=offset))
            installation_datasets_offset_data = installation_datasets_offset_request.json()

            for dataset in installation_datasets_offset_data['results']:
                dataset_type = dataset['type']
                datasets[installation_type]['ALL'] += 1
                datasets[installation_type][dataset_type] += 1


print("-------------------------------------------")
print(datasets)
