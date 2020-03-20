#!/bin/bash
# Script to set a per workspace desktop background in Cinnamon.
# Save as ~/bin/workspace_backgrounds_switcher.sh or ~/.local/bin/workspace_backgrounds_switcher.sh and make executable
# Add an entry in startup applications to launch the script on start-up.

# Set your images here - one per active workspace.
# Add extra WORKSPACE_BACKGROUND[X] entries as necessary.
WORKSPACE_BACKGROUND[0]="/home/michael/Pictures/1.jpg"
WORKSPACE_BACKGROUND[1]="/home/michael/Pictures/2.jpg"
WORKSPACE_BACKGROUND[2]="/home/michael/Pictures/3.jpg"
WORKSPACE_BACKGROUND[3]="/home/michael/Pictures/4.jpg"


# Check for existing instance and exit if already running
if pidof -o %PPID -x "${0##*/}"; then
  exit 1
fi
# Monitor for workspace changes and set the background on change.
xprop -root -spy _NET_CURRENT_DESKTOP | while read -r;
  do
    gsettings set org.cinnamon.desktop.background picture-uri "file://${WORKSPACE_BACKGROUND[${REPLY: -1}]}"
  done
