import requests

org_total = 0
org_without_coordinates = 0
org_with_coordinates = 0


for offset in range(0, 400, 20):
    ipt_installations_request = (requests.get("https://api.gbif.org/v1/installation?type=ipt_installation&limit=20&offset={offset}".format(offset=offset)))
    ipt_installations_data = ipt_installations_request.json()

    for ipt_installation in ipt_installations_data['results']:
        print("-------------------------------------------")
        print("Checking IPT installation {instKey} (https://registry.gbif.org/installation/{instKey})".format(instKey=ipt_installation['key']))
        organization_request = requests.get("https://api.gbif.org/v1/organization/{orgKey}"
                                                          .format(orgKey=ipt_installation['organizationKey']))
        organization = organization_request.json()

        org_total = org_total + 1

        print("Organization {orgKey} (https://registry.gbif.org/organization/{orgKey})".format(orgKey=organization['key']))
        print("Organization {orgName}".format(orgName=organization['title']))

        if 'longitude' in organization and 'latitude' in organization:
            org_with_coordinates = org_with_coordinates + 1
            print("coordinates: latitude [{lat}], longitude [{long}]"
                  .format(lat=organization['latitude'], long=organization['longitude']))
        else:
            org_without_coordinates = org_without_coordinates + 1
            print("***organization coordinates missing!***")
            print("checking installation coordinates")

            if 'latitude' in ipt_installation and 'longitude' in ipt_installation:
                print('installation coordinates: latitude[{lat}], longitude [{long}]'
                      .format(lat=ipt_installation['latitude'], long=ipt_installation['longitude']))
            else:
                print('***installation coordinates missing!***')

            print('checking organization address')

            if 'homepage' in organization:
                print("Homepage: {homepage}".format(homepage=organization['homepage']))
            else:
                print('Homepage: -')

            if 'email' in organization:
                print("Email: {email}".format(email=organization['email']))
            else:
                print('Email: -')

            if 'address' in organization:
                print("Address: {addr}".format(addr=organization['address']))
            else:
                print('Address: -')

            if 'city' in organization:
                print("City: {city}".format(city=organization['city']))
            else:
                print('City: -')

            if 'province' in organization:
                print("Province: {province}".format(province=organization['province']))
            else:
                print('Province: -')

            if 'country' in organization:
                print("Country: {country}".format(country=organization['country']))
            else:
                print('Country: -')


print("")
print("Statistic:")
print("Total number of organizations with IPT installations: {num}".format(num=org_total))
print("Organizations with coordinates: {num}".format(num=org_with_coordinates))
print("Organizations without coordinates: {num}".format(num=org_without_coordinates))
