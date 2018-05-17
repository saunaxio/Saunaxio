#!/bin/bash

# Script to set state of the microphone on/off.

current_state=$(amixer -c 1 cget numid=2,iface=MIXER,name='Mic Capture Switch' | grep ': values' | cut -d = -f 2)

if [ $current_state == "on" ]; then
	mosquitto_pub -h localhost -p 1883 -t hermes/feedback/sound/toggleOff -m '{"siteId": "default"}'
	amixer -c 1 cset numid=2,iface=MIXER,name='Mic Capture Switch' 0
	aplay /home/pi/Music/tts/deactivateMic.wav
else
	mosquitto_pub -h localhost -p 1883 -t hermes/feedback/sound/toggleOn -m '{"siteId": "default"}'
	amixer -c 1 cset numid=2,iface=MIXER,name='Mic Capture Switch' 1
	aplay /home/pi/Music/tts/activateMic.wav
fi

