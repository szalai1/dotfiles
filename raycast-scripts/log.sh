#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title log
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🪵 
# @raycast.argument1 { "type": "text", "placeholder": "* " }

# Documentation:
# @raycast.description logthing to a file
# @raycast.author szalai1
# @raycast.authorURL https://raycast.com/szalai1

d=`date +"%Y-%m-%d"` 
t=`date +"%H:%M"`
echo "- [[$d]] $t $1 " >>  ~/SynologyDrive/pages/RayCastLog.md
