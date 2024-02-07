#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title task breakdown
# @raycast.mode fullOutput

# Optional parameters:
# use proper emoji for icon related to title =>  ✍️
# @raycast.icon 🔍 
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder", "optional": true }
# @raycast.packageName Breakdown tasks to smaller steps

# Documentation:
# @raycast.author mghodsizadeh
# @raycast.authorURL https://raycast.com/mghodsizadeh

SYSTEM_COMMAND="Break down this task into smaller steps maximum 10 steps but preferably 4"
if [ -z "$1" ]
then
    echo "task: $(pbpaste)" | llm -s "$SYSTEM_COMMAND"  -m 4
    exit 0
fi

llm -s "$SYSTEM_COMMAND" "task: $1" -m 4