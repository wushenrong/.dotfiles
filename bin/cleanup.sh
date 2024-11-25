#!/bin/bash

# Cleanup by removing the nano configuration that we copied
rm -rf ~/.nanorc

# Remove the vim configuration too
rm -rf ~/.vimrc

# Remove the line that sources our custom bash configuration
sed -i "s/source ~\/.dotfiles\/etc\/bashrc_custom//" ~/.bashrc

# Remove the ~/.TRASH folder we created
rm -rf ~/.TRASH
