#!/bin/bash

if [[ ! `which brew` ]]; then
  # Install Homebrew (and Linuxbrew).
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Install applications from the Brewfile.
brew bundle

printf "\n✅ Successfully installed Homebrew packages\n\n"
