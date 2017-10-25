#!/usr/bin/env bash
cd ~/

# Download StarCraftII for Linux
wget "http://blzdistsc2-a.akamaihd.net/Linux/SC2.3.16.1.zip"

# Download map packs
wget "http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season1.zip"
wget "http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season2.zip"
wget "http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season3.zip"
wget "http://blzdistsc2-a.akamaihd.net/MapPacks/Melee.zip"

# Unzip archives - see https://github.com/Blizzard/s2client-proto for terms and password
unzip SC2.3.16.1.zip -d ~
echo -e "##############################
\n
\n
SUCCESS: SC2 extracted
\n
\n
##############################"

unzip Ladder2017Season1.zip -d ~/StarCraftII/Maps/
unzip Ladder2017Season2.zip -d ~/StarCraftII/Maps/
unzip Ladder2017Season3.zip -d ~/StarCraftII/Maps/
echo -e "##############################
\n
\n
SUCCESS: Ladder Maps extracted
\n
\n
##############################"

unzip Melee.zip -d ~/StarCraftII/Maps/
echo -e "##############################
\n
\n
SUCCESS: Melee Maps extracted
\n
\n
##############################"

# Remove zip files
rm *.zip
