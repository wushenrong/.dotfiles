#!/bin/bash
# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

# Cleanup by removing the nano configuration that we had copy
rm -rf ~/.nanorc

# Remove the line that sources our custom bash configuration
sed -i "s/source ~\/.dotfiles\/etc\/bashrc_custom//" ~/.bashrc

# Remove the ~/.TRASH folder we created
rm -rf ~/.TRASH
