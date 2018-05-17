#!/bin/bash

echo "### Festival-to-wav script ###"
echo "Remember to change the conf in /etc/festival.scm to make wav files!"
sleep 1
echo "Write the text:"
read text
puhu "'$text'"
echo "Give name of wav file:"
read name
sox -t s16 -r 22050 /home/pi/Music/tts/audio /home/pi/Music/tts/$name.wav >/dev/null 2>&1
rm /home/pi/Music/tts/audio
echo "Done!"
