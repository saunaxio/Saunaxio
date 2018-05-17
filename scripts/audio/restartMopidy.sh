#!/bin/bash
# Script to restart Mopidy service from Home Assistant

sudo su pi -c 'aplay /home/pi/Music/tts/mopidyRestart.wav'
sudo service mopidy restart
sleep 5
sudo su pi -c 'aplay /home/pi/Music/tts/mopidyRestarted.wav'
