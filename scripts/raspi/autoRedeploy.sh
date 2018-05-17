#!/bin/bash

# Script to auto redeploy Node-RED flows if found faulty.

cd /home/pi/.node-red/
# Authorization for password secured Node-RED with Access token.
curl -H "Authorization: Bearer long_access_token_here" -X POST http://localhost:1880/flows -H "Content-Type: application/json" --data "@flows_name_.json"
cd

