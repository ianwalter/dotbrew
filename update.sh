#!/bin/bash

# Change to the .config directory in order to update the Brewfile there.
dotbrewDir=$(pwd)
cd ~/.config

# Update the Brewfile.
brew bundle dump --force

# Copy the Brewfile back to this module's directory.
cp Brewfile $dotbrewDir

# Change back to this module's directory.
cd $dotbrewDir

