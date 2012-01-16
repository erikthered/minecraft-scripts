#! /bin/bash

# Location of Minecraft server folder
MINECRAFT_FOLDER=/home/minecraft/minecraft_server
WORLD="world"

# Location of output folder
OUTPUT=/home/minecraft/map

# Run the Overviewer
overviewer.py $MINECRAFT_FOLDER/$WORLD $OUTPUT