#!/bin/bash
sudo apt-get update -y; sudo apt-get upgrade -y
sudo apt-get install -y mc apache2-utils wget curl screen pv apt-transport-https ca-certificates curl gnupg2 software-properties-common
sudo apt-get -y install python3 python3-dev python3-jinja2 python3-psutil python3-setuptools hddtemp python3-pip lm-sensors
pip3 install python-dateutil
pip install --user 'glances[cpuinfo,docker]'
pip install --user --upgrade 'glances[cpuinfo,docker]'
export PATH=$PATH:/opt/.local/bin