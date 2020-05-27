#!/bin/bash

platform=$(uname)

if [[ ! `which brew` ]]; then
  if [[ $platform == 'Linux' ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
  else
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
fi

brew bundle
