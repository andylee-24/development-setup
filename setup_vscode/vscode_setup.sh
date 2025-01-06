#!/bin/bash

BASE_DIR=$(dirname "$0")
EXTENSION_IDENTIFIERS=$(cat "${BASE_DIR}/vscode-extension.txt")

for identifier in $EXTENSION_IDENTIFIERS
do
    echo "[Installing $identifier]"
    echo $(code --install-extension $identifier)
done

# $0: This represents the name of the script being executed. 
# Depending on how the script is called, 
# this could be a relative or absolute path.

# dirname "$0": The dirname command is used to extract 
# the directory path from a full file path. 
# By passing $0 to dirname, it extracts the directory path portion of the script's location.


# original script written by @mugglim
# https://github.com/mugglim/vscode-extension-install-automation/tree/main

# Add vscode identifers you want to install to the txt file.
# You can find the 'Unique Identifier' in the vscode marketplace website

echo "open remote setting to change the color theme"
