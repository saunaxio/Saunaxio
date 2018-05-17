#!/bin/bash
# Run this script when adding new music(s) into Mopidy Local music directory.
# Add music into local_dir specified in /etc/mopidy/mopidy.conf

chmod -R 777 /home/pi/Music/mopidy
sudo mopidyctl local scan
sudo chmod -R 777 /var/lib/mopidy/
sudo service mopidy restart


