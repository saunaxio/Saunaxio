#!/bin/bash

ping -q -c5 8.8.8.8 > /dev/null

if [ $? -eq 0 ]
then
	exit 0
else
	aplay /home/pi/Music/tts/reconnectInternet.wav
	sudo ifdown wlan0
	sudo ifdown eth0
	sleep 5
	sudo ifup wlan0
	sudo ifup eth0
	sleep 5
	if [ $? -eq 0 ]
	then
		aplay /home/pi/Music/tts/connectionOK.wav
        	exit 0
	fi

fi
