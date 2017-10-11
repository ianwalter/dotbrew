#!/bin/sh

# Output Homebrew packages to .brew file.
brew list > ~/.brew

# Copy .brew file back to repsitory.
cp ~/.brew ./.brew
