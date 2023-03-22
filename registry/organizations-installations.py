import requests


org_with_0_inst = 0
org_with_1_inst = 0
org_with_2_inst = 0
org_with_3_or_more_inst = 0


for offset in range(0, 2500, 20):
    organizations_request = requests.get("https://api.gbif.org/v1/organization?limit=20&offset={offset}"
                                         .format(offset=offset))
    organizations_data = organizations_request.json()

    for organization in organizations_data['results']:
        print("-------------------------------------------")
        print("Checking organization {orgKey}".format(orgKey=organization['key']))
        organization_installations_request = requests.get("https://api.gbif.org/v1/organization/{orgKey}/installation"
                                                          .format(orgKey=organization['key']))
        organization_installations_data = organization_installations_request.json()

        number = 0
        for installation in organization_installations_data['results']:
            number = number + 1
            print("installation {number}: {instKey}".format(number=number, instKey=installation['key']))

        print("Number of installations: {number}".format(number=number))

        if number == 0:
            org_with_0_inst = org_with_0_inst + 1
        elif number == 1:
            org_with_1_inst = org_with_1_inst + 1
        elif number == 2:
            org_with_2_inst = org_with_2_inst + 1
        elif number > 2:
            org_with_3_or_more_inst = org_with_3_or_more_inst + 1


print("Statistic:")
print("Organizations with 0 installations: {num}".format(num=org_with_0_inst))
print("Organizations with 1 installation: {num}".format(num=org_with_1_inst))
print("Organizations with 2 installations: {num}".format(num=org_with_2_inst))
print("Organizations with 3 or more installations: {num}".format(num=org_with_3_or_more_inst))
