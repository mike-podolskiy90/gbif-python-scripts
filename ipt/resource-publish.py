import requests
import sys
import time


# Cookie-based authentication
ipt_server = 'ipt.gbif-uat.org'
hostUrl = 'https://%s/' % ipt_server
loginFormUrl = hostUrl + 'login.do'
loginUrl = hostUrl + 'login.do'
publishUrl = hostUrl + 'manage/publish.do'
# Input parameters we are going to send
payload = {
    'email': 'mpodolskiy@gbif.org',
    'password': 'Rj3NOPyH',
    'csrfToken': ''
}

s = requests.Session()
response = s.post(loginFormUrl, verify = True)
if response.status_code != 200:
    print("Failed to initiate login process: %s" % response.status_code)
    sys.exit()

payload['csrfToken'] = s.cookies.get('CSRFtoken')
response = s.post(loginUrl, data = payload)
if response.status_code != 200:	# Could get a 502 Bad Gateway error.
    print("Failed to login: %s" % response.status_code)
    sys.exit()
else:
    print("Sucessfully logged in to %s" % hostUrl)


# # Send a publish request
# resource = "insdc-environment-sample-sequences"
# params = {'r' : resource,
#           'autopublish': '',
#           'currPubMode' : 'AUTO_PUBLISH_OFF',
#           'pubMode': '',
#           'currPubFreq': '',
#           'pubFreq': '',
#           'publish': 'Publish',
#           'summary': "change summary text..."}

# contents = s.post(publishUrl, data = params)
# if successful, contents = <200>. But it is often <404>

# Send a publish request
duration = 20
resourcesToUpdate = ["insdc-environment-sample-sequences", "insdc-host-organism-sequences", "test_sylvain3",
                     "resource-03-02-2022", "nadinha"]
for resource in resourcesToUpdate:
    print("Publishit resource %s" % resource)
    try:
        params = {'r' : resource,
                  'autopublish': '',
                  'currPubMode' : 'AUTO_PUBLISH_OFF',
                  'pubMode': '',
                  'currPubFreq': '',
                  'pubFreq': '',
                  'publish': 'Publish',
                  'summary': "--"}

        contents = s.post(publishUrl, data = params)
        # The first dataset tends to be successful with <200>. The ones from the second on tend to be an error with <404>

        time.sleep(duration)
    # except urllib2.HTTPError as e:
    #     print('HTTPError = ' + str(e.code))
    # except urllib2.URLError as e:
    #     print('URLError = ' + str(e.reason))
    except Exception as e:
        print('Exception')
        print(e)

