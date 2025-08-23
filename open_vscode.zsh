#!/bin/bash

text="{\"containerName\":\"/$1\", \"settings\": {\"context\": \"desktop-linux\"}}"
hex=$(printf "$text" | xxd -p -c 256 | tr -d '\n')

command="code --folder-uri=vscode-remote://attached-container+${hex}/plum_chatbot"

echo "Executing \`$command\`"
eval $command
