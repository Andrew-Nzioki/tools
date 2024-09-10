#!/bin/bash
# Read extensions from the JSON file and install them
jq -r '.[]' vscode_extensions.json | xargs -L 1 code --install-extension

echo "Extensions installed from vscode_extensions.json"
