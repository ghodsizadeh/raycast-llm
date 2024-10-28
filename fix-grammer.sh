#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Fix grammer
# @raycast.mode fullOutput

# Optional parameters:
# use proper emoji for icon related to title =>  ✍️
# @raycast.icon  ✍️
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder", "optional": true }
# @raycast.packageName smart llm

# Documentation:
# @raycast.author mghodsizadeh
# @raycast.authorURL https://raycast.com/mghodsizadeh

# echo "Hello World! Argument1 value: "$1""
SYSTEM_COMMAND="Fix spelling and grammer of text and use proper words if possible, never change abbreviation in json {\"text\": \"corrected text\"}"
if [ -z "$1" ]
then
    echo "text: $(pbpaste)" | llm -s "$SYSTEM_COMMAND" -o json_object true | jq -r '.text'
    exit 0
fi

llm -s "$SYSTEM_COMMAND" "text: $1"

