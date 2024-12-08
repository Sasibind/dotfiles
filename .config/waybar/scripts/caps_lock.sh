#!/bin/bash

# Check if the file exists
file="/sys/class/leds/input*\:\:capslock/brightness"

# Use a glob to match the file path, if it exists
file=$(echo $file)

if [ ! -f "$file" ]; then
    echo "Caps Lock brightness file not found!"
    exit 1
fi

# Loop to continuously check the file content
while true; do
    # Read the file content (should be either 0 or 1)
    content=$(cat "$file")

    # Check the content and output accordingly
    if [ "$content" -eq 1 ]; then
        echo "on"
    elif [ "$content" -eq 0 ]; then
        echo "off"
    else
        echo "Invalid content. Expected 0 or 1."
        exit 1
    fi

    # Wait for 1 second before checking again
    sleep 0.1
done
