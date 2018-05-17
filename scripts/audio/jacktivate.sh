#!/bin/bash
while true
do
	jackd -t 10000 -p 500 -d alsa -P uerollraw -r 32000 -n 3 -p 2048
	sleep 5
done

## For wired connection remove the -P uerollraw from the command
