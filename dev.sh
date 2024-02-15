#!/bin/bash

echo "Changing to ~/Developer directory."
cd ~/Developer || { echo "Failed to change to ~/Developer directory."; exit 1; }


if [ $# -eq 1 ]; then
    echo "Changing to directory specified in argument: $1"
    cd "$1" || { echo "Failed to change to $1 directory."; exit 1; }
fi

f
