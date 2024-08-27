#!/bin/bash

# Checking if is running in Repo Folder
if [[ "$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" =~ ^scripts$ ]]; then
    echo "You are running this in ArchRahul Folder."
    echo "Please use ./ArchRahul.sh instead"
    exit
fi

# Installing git

echo "Installing git."
pacman -Sy --noconfirm --needed git glibc

echo "Cloning the ArchRahul Project"
git clone https://github.com/aarjaycreation/ArchRahul

echo "Executing ArchRahul Script"

cd $HOME/ArchRahul

exec ./ArchRahul.sh
