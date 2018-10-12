#!/bin/bash

# Output Homebrew packages to .brew file.
brew list > ~/.brew

# Copy .brew file back to repsitory.
cp ~/.brew ./.brew

# Output Homebrew Cask packages to .cask file.
brew cask list > ~/.cask

# Copy .cask file back to repsitory.
cp ~/.cask ./.cask

if [[ $? == 0 ]]; then
  echo "Updated package lists successfully."
fi
