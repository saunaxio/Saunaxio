#!/bin/bash

# This script assumes that the initial download of assistant_proj_xxxxxx.zip is located inside the home folder (/home/pi/).
# Modify this script accordingly if paths differ from original.
# Assistant is installed inside the /usr/share/snips/ folder.

# Unzip the assistant_proj_xxxxxx.zip file.

unzip $1

# Remove old assistant from Snips and add new one.
sudo rm -r /usr/share/snips/assistant
sudo mv /home/pi/assistant /usr/share/snips/

sudo service snips-* restart
sleep 5

# Enable audio from Snips.
mosquitto_pub -h localhost -p 1883 -t hermes/feedback/sound/toggleOn -m '{"siteId":"default"}'
