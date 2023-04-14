#!/bin/bash

# Move to the Steam Deck movies folder
cd /home/deck/.steam/root/config/uioverrides/movies/

# Delete previous symlink
unlink deck_startup.webm

# Create variable that randomizes the file name
INTRO=$(ls /home/deck/deckvideos/|shuf -n 1)
#echo $INTRO

# Create symlink based on the file name
ln -s /home/deck/deckvideos/$INTRO deck_startup.webm
