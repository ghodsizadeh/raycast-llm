#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Make it shorter
# @raycast.mode fullOutput

# Optional parameters:
# use proper emoji for icon related to title =>  ✍️
# @raycast.icon 🗂️ 
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder", "optional": true }
# @raycast.packageName Make the text shorter

# Documentation:
# @raycast.author mghodsizadeh
# @raycast.authorURL https://raycast.com/mghodsizadeh

SYSTEM_COMMAND="Make the text shorter but meaningful"
if [ -z "$1" ]
then
    echo "topic: $(pbpaste)" | llm -s "$SYSTEM_COMMAND" 
    exit 0
fi

llm -s "$SYSTEM_COMMAND" "topic: $1"