# My Dotfiles

This repository contains my dotfile configurations for different software in
Linux. It will add additional functions and aliases to Bash and configures Nano
and backup the existing configuration. Also it will create a trash folder so
rm files can be recovered.

## Install Configuration

The configuration is managed by using a Makefile. To install the configuration,
run just `make`.

## Remove Configuration

To revert change, run `make clean` to uninstall the configuration.

## etc/nanorc

Configuration file for the editor Nano. It tells nano to auto indent lines, set
the indentation size to four columns, use bold text, enable mouse support, and
set the colors of the shortcut key combos to red and blue.

## etc/bashrc_custom

Additional aliases and functions for commands like `cd` and `tar` for Bash. Also
sets the `PATH` variable to include the current working directory.
