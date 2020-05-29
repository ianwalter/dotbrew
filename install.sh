#!/bin/bash

if [[ ! `which brew` ]]; then
  # Install Homebrew (and Linuxbrew).
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

  if [[ $(uname) == 'Linux' ]]; then
    # Add brew to $PATH for the current session.
    eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  fi
fi

# Make the .config directory if it doesn't exist yet.
mkdir -p ~/.config

if [[ $(uname) == 'Darwin' ]]; then
  # Install macOS-based packages.
  cat Brewfile macos.Brewfile > ~/.config/Brewfile
else
  # Install Linux-based packages.
  cat Brewfile linux.Brewfile > ~/.config/Brewfile
fi

# Change to the .config directory in order to install from the Brewfile there.
dotbrewDir=$(pwd)
cd ~/.config

# Install applications from the Brewfile.
brew bundle

# Change back to this module's directory.
cd $dotbrewDir

if [[ $? == 0 ]]; then
  printf "\n✅ Successfully installed Homebrew packages\n\n"
fi
