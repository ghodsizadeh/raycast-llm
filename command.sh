#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Custom COmmand
# @raycast.mode fullOutput

# Optional parameters:
# use proper emoji for icon related to custom command => :nerd_face:
# @raycast.icon 🤓
# @raycast.argument1 { "type": "text", "placeholder": "Command", "optional": true }
# @raycast.argument2 { "type": "text", "placeholder": "Context", "optional": true }
# @raycast.packageName make professional

# Documentation:
# @raycast.author mghodsizadeh
# @raycast.authorURL https://raycast.com/mghodsizadeh

# echo "Hello World! Argument1 value: "$1""
SYSTEM_COMMAND=$1
if [ -z "$2" ]
then
    echo "text: $(pbpaste)" | llm -s "$SYSTEM_COMMAND"  -m gpt-4o
    exit 0
fi

llm -s "$SYSTEM_COMMAND" "text: $1"

