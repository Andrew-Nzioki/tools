#!/bin/bash
# List installed extensions and output to a JSON file
code --list-extensions | xargs -L 1 echo -n | jq -R . | jq -s . > vscode_extensions.json

echo "Extensions saved to vscode_extensions.json"
