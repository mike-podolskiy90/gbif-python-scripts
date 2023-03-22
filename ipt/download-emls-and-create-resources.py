import requests
import xml
import xml.etree.ElementTree as ET
import os
import shutil


def get_resource_shortname(eml_url):
    split_array = eml_url.split('?r=', 3)
    return split_array[1]


def create_resource_directory(resource_shortname):
    # Parent Directory path
    parent_dir = "/Users/rvl320/IdeaProjects/ipt/datadir4/resources"
    # Path
    path = os.path.join(parent_dir, resource_shortname)
    # Create the directory
    os.mkdir(path)
    print("Directory '% s' created" % resource_shortname)


def copy_resource_xml_file_into_resource_directory(resource_shortname):
    # Parent Directory path
    parent_dir = "/Users/rvl320/IdeaProjects/ipt/datadir4/resources"
    shutil.copy("/Users/rvl320/PythonProjects/gbif-python-scripts/ipt/resource.xml",
                parent_dir + "/" + resource_shortname + "/resource.xml")


def download_eml_file_into_resource_directory(resource_shortname, eml_url):
    eml = requests.get(eml_url)
    filepath = os.path.join('/Users/rvl320/IdeaProjects/ipt/datadir4/resources', resource_shortname, 'eml.xml')
    f = open(filepath, "a")
    f.write(eml.text)


try:
    rss = requests.get("https://ipt-inpn.gbif.fr/rss.do")
    content = rss.content
    root = ET.fromstring(content)
    counter = 0

    for child in root.iter('*'):
        if child.tag == '{http://ipt.gbif.org/}eml':
            # if counter == 50:
            #     break
            eml_url = child.text
            resource_shortname = get_resource_shortname(eml_url)
            print(eml_url)
            print(resource_shortname)
            create_resource_directory(resource_shortname)
            copy_resource_xml_file_into_resource_directory(resource_shortname)
            download_eml_file_into_resource_directory(resource_shortname, eml_url)
            # counter = counter + 1


except xml.etree.ElementTree.ParseError:
    print("Parse error")



