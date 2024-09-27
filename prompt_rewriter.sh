#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Rewrite Prompt
# @raycast.mode fullOutput

# Optional parameters:
# Use an appropriate emoji for the icon related to the title => 🔄
# @raycast.icon 🔄
# @raycast.argument1 { "type": "text", "placeholder": "Enter prompt to rewrite", "optional": true }
# @raycast.packageName smart llm

# Documentation:
# @raycast.author mghodsizadeh
# @raycast.authorURL https://raycast.com/mghodsizadeh

# Define the system prompt for rewriting
SYSTEM_COMMAND="Rewrite the following prompt to be clearer and more effective, preserving the original intent and key points."

# Check if an argument is provided; if not, use the clipboard content
if [ -z "$1" ]
then
    echo "prompt: $(pbpaste)" | llm -s "$SYSTEM_COMMAND"
    exit 0
fi

# Rewrite the provided prompt argument
llm -s "$SYSTEM_COMMAND" "prompt: $1"
