#!/bin/bash
# Script to upgrade the Home Assistant's Hassbian installation.
# Upgrading is done as homeassistant user.

sudo systemctl stop home-assistant@homeassistant.service
sudo su -s /bin/bash homeassistant
source /srv/homeassistant/bin/activate
pip3 install --upgrade homeassistant
exit
sudo systemctl start home-assistant@homeassistant.service
