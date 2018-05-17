#!/bin/bash

# This script starts all the Snips services.

sudo su pi -c 'aplay /home/pi/Music/tts/snipsRestart.wav'
sudo service snips-* restart
mosquitto_pub -h localhost -p 1883 -t hermes/feedback/sound/toggleOn -m '{"siteId":"default"}'

