#!/usr/bin/env bash
cd ~/
# Download StarCraftII for Linux
# See https://github.com/Blizzard/s2client-proto for terms and password
wget "http://blzdistsc2-a.akamaihd.net/Linux/SC2.3.16.1.zip"
unzip SC2.3.16.1.zip

# Change working directory to "Maps" folder
cd ~/StarCraftII/Maps/

# Download map packs and extract
wget "http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season1.zip"
wget "http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season2.zip"
wget "http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season3.zip"
wget "http://blzdistsc2-a.akamaihd.net/MapPacks/Melee.zip"
unzip Ladder2017Season1.zip
unzip Ladder2017Season2.zip
unzip Ladder2017Season3.zip
unzip Melee.zip

# Remove zip files
rm *.zip
