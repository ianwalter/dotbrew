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
