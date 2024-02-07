#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Emoji
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon  🤡
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder" }
# @raycast.packageName smart llm

# Documentation:
# @raycast.author mghodsizadeh
# @raycast.authorURL https://raycast.com/mghodsizadeh

# echo "Hello World! Argument1 value: "$1""
llm -s "Provide one emoji from prompt" "prompt: $1"

