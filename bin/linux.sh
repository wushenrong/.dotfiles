#!/bin/bash
# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

# Check if we are using Linux and exit if false
if [ "$(uname)" != "Linux" ]; then
    echo "Error: The current OS is not Linux" >> linuxsetup.log
    exit 1
fi

# Create the .TRASH directory in the home folder if it does not exist
mkdir -p ~/.TRASH

# Checking and backing up an existing nano configuration
if [ -f ~/.nanorc ]; then
  echo "Renaming ~/.nanorc to ~/.bup_nanorc" >> linuxsetup.log
  mv ~/.nanorc ~/.bup_nanorc
fi

# Copy the new nano configuration to the home directory
cat etc/nanorc > ~/.nanorc

# Checking and backing up an existing vim configuration
if [ -f ~/.vimrc ]; then
  echo "Renaming ~/.vimrc to ~/.bup_vimrc" >> linuxsetup.log
  mv ~/.vimrc ~/.bup_vimrc
fi

# Append the custom bash configuration at the end of the existing configuration
# to access custom aliases and functions
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
