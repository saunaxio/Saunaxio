#!/bin/bash

# Script to restart Node-RED
sudo su pi -c 'aplay /home/pi/Music/tts/noderedRestart.wav'
sudo service nodered restart
sleep 10
sudo su pi -c 'aplay /home/pi/Music/tts/noderedRestarted.wav'
