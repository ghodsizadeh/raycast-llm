#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title llm-log
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🤖 
# @raycast.argument1 { "type": "text", "placeholder": "Query", "optional": true }
# @raycast.argument2 { "type": "text", "placeholder": "Log number", "optional": true }
# @raycast.packageName smart llm

# Documentation:
# @raycast.author mghodsizadeh
# @raycast.authorURL https://raycast.com/mghodsizadeh

# number of logs 10 or $1
if [ -z "$2" ]
then
    NUMBER_OF_LOGS=10
else
    NUMBER_OF_LOGS=$2
fi
Query=$1
if [ -z "$Query" ]
   llm logs -n $NUMBER_OF_LOGS
 
then
llm logs -n $NUMBER_OF_LOGS -q "$Query"
fi

