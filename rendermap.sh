#! /bin/bash

# Relevant locations for the backup
MINECRAFT_FOLDER="/home/minecraft/minecraft_server" # Server directory
WORLD="world" # World name
TMP_FOLDER="/home/minecraft/tmp" # Temp folder to copy the world to
OUTPUT="/home/minecraft/map" # Output folder for overviewer

# Disable saving
run_as "screen -p 0 -S minecraft -X eval 'stuff save-off\015'"	

# Copy world directory to temp folder
cp -pr $MINECRAFT_FOLDER/$WORLD $TMP_FOLDER/$WORLD

# Enable Saving
run_as "screen -p 0 -S minecraft -X eval 'stuff save-on\015'"	

# Run the Overviewer
echo "Starting render."
overviewer.py $TMP_FOLDER/$WORLD $OUTPUT
echo "Rendering complete."

# Cleanup temp files
echo "Cleaning up temp files"
rm -rf $TMP_FOLDER/$WORLD

echo "Done"