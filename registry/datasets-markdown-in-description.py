import requests


def check_installation(key):
    installation_request = requests.get("https://api.gbif.org/v1/installation/{installationKey}"
                                        .format(installationKey=key))
    installation_data = installation_request.json()
    installation_type = installation_data['type']

    if installation_type == "IPT_INSTALLATION":
        print("IPT INSTALLATION")


for offset in range(0, 93040, 20):
    datasets_request = requests.get("https://api.gbif.org/v1/dataset?limit=20&offset={offset}"
                                    .format(offset=offset))
    datasets_data = datasets_request.json()

    for dataset in datasets_data['results']:
        datasetKey = dataset['key']

        if 'description' in dataset:
            datasetDescription = dataset['description']

            if "&lt;" in datasetDescription and "&gt;" in datasetDescription:
                print("TRIGGERED: {datasetKey}".format(datasetKey=datasetKey))
                print("Reason: encoded tags are present")
                check_installation(dataset['installationKey'])
                print(datasetDescription)
            elif "<em>" in datasetDescription:
                print("TRIGGERED: {datasetKey}".format(datasetKey=datasetKey))
                print("Reason: <em> tag present")
                check_installation(dataset['installationKey'])
                print(datasetDescription)
            elif "<ul>" in datasetDescription or "<ol>" in datasetDescription:
                print("TRIGGERED: {datasetKey}".format(datasetKey=datasetKey))
                print("Reason: <ul> and/or <ol> tags present")
                check_installation(dataset['installationKey'])
                print(datasetDescription)
            elif "<b>" in datasetDescription:
                print("TRIGGERED: {datasetKey}".format(datasetKey=datasetKey))
                print("Reason: <b> tag present")
                check_installation(dataset['installationKey'])
                print(datasetDescription)
