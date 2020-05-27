#!/bin/bash

if [[ ! `which brew` ]]; then
  # Install Homebrew (and Linuxbrew).
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle
