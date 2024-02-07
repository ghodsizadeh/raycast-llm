#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Jira Ticket 
# @raycast.mode fullOutput

# Optional parameters:
# use proper emoji for icon related to title =>  ✍️
# @raycast.icon 🗂️ 
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder", "optional": true }
# @raycast.packageName Provide title and description for jira ticket

# Documentation:
# @raycast.author mghodsizadeh
# @raycast.authorURL https://raycast.com/mghodsizadeh

# echo "Hello World! Argument1 value: "$1""
SYSTEM_COMMAND="Provide title, description and short acceptance criteria for jira ticket"
if [ -z "$1" ]
then
    echo "topic: $(pbpaste)" | llm -s "$SYSTEM_COMMAND" 
    exit 0
fi

llm -s "$SYSTEM_COMMAND" "topic: $1"