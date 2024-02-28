#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Decode base64
# @raycast.mode fullOutput

# Optional parameters:
# use proper emoji for icon related to title =>  ✍️
# @raycast.icon 🔐 
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder", "optional": true }
# @raycast.packageName Decode base64

# Documentation:
# @raycast.author mghodsizadeh
# @raycast.authorURL https://raycast.com/mghodsizadeh

if [ -z "$1" ]
then
    echo "$(pbpaste)" | base64 -d
    exit 0
fi

echo "$1" | base64 -d


