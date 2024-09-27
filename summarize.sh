#!/bin/bash -l

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Summarize
# @raycast.mode fullOutput

# Optional parameters:
# use proper emoji for icon related to title =>  ✍️
# @raycast.icon  📖
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder", "optional": true }
# @raycast.packageName smart llm

# Documentation:
# @raycast.author mghodsizadeh
# @raycast.authorURL https://raycast.com/mghodsizadeh

SYSTEM_COMMAND="Summarize the text in 3 bulltes and tell the main idea "
if [ -z "$1" ]
then
    echo "text: $(pbpaste)" | llm -s "$SYSTEM_COMMAND" 
    exit 0
fi

llm -s "$SYSTEM_COMMAND" "text: $1"

