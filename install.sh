#!/bin/bash

if [[ ! `which brew` ]]; then
  # Install Homebrew (and Linuxbrew).
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew bundle
