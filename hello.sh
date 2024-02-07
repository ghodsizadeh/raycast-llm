#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title hello
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon :dog:
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder" }
# @raycast.packageName smart llm

# Documentation:
# @raycast.author mghodsizadeh
# @raycast.authorURL https://raycast.com/mghodsizadeh

# echo "Hello World! Argument1 value: "$1""
# if 1 is nor proivded get it from clipboard like echo "$(pbpaste)" | llm 
if [ -z "$1" ]
then
    pbpaste | llm 
    exit 0
fi
llm "$1"

