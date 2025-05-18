#!/bin/bash

# Set the name of your primary display (usually the built-in one)
PRIMARY="eDP-1"

# Get all active outputs except the primary
OUTPUTS=$(swaymsg -t get_outputs | jq -r '.[] | select(.active and .name != "'$PRIMARY'") | .name')

# Mirror the primary display to each connected external output
for OUTPUT in $OUTPUTS; do
    wl-mirror -f -s "$PRIMARY" -o "$OUTPUT" &
done

