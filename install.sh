#!/bin/bash

# Copy .brew file to home directory.
cp ./.brew ~/.brew

# Install Homebrew packages from .brew file.
packages=$(brew list)
while read p; do
  installed=$(echo "$packages" | grep -ce "^$p\$")
  if [ $installed == "0" ]; then
    brew install $p
  fi
done < ~/.brew

# Copy .cask file to home directory.
cp ./.cask ~/.cask

# I'd tap that.
brew tap caskroom/fonts

# Install Homebrew packages from .brew file.
packages=$(brew cask list)
while read p; do
  installed=$(echo "$packages" | grep -ce "^$p\$")
  if [ $installed == "0" ]; then
    brew cask install $p
  fi
done < ~/.cask

if [[ $? == 0 ]]; then
  echo "Installed Homebrew packages successfully."
fi
