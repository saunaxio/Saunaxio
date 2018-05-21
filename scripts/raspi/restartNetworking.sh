#!/bin/bash

# Script to force restart the networking service

sudo su pi -c 'aplay /home/pi/Music/tts/networkingRestart.wav'
sudo service networking restart
sleep 10
sudo su pi -c 'aplay /home/pi/Music/tts/networkingRestarted.wav'

