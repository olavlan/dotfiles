#!/bin/bash

# set the system font to Open Sans
system_font="Open Sans Bold 14"
dconf_schema="org.gnome.desktop.interface"
gsettings set $dconf_schema font-name "$system_font"
gsettings set $dconf_schema document-font-name "$system_font"

# set system theme and night shift
gsettings set $dconf_schema color-scheme "prefer-dark"
dconf_schema="org.gnome.settings-daemon.plugins.color"
gsettings set $dconf_schema night-light-enabled true
gsettings set $dconf_schema night-light-schedule-automatic false
gsettings set $dconf_schema night-light-schedule-from 15.0
gsettings set $dconf_schema night-light-schedule-to 14.99
gsettings set $dconf_schema night-light-temperature 1700

# set the terminal font
profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
profile=${profile:1:-1}
dconf_schema="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/"
gsettings set $dconf_schema use-system-font false
gsettings set $dconf_schema font "Monospace Bold 15"

# set the terminal color palette
palette=$(python3 ~/.scripts/palette.py)
gsettings set $dconf_schema palette "$palette"
gsettings set $dconf_schema foreground-color "rgb(255,240,240)"
gsettings set $dconf_schema background-color "rgb(0,0,0)"
gsettings set $dconf_schema use-theme-colors false

# set the default terminal shell
gsettings set $dconf_schema use-custom-command true
gsettings set $dconf_schema custom-command "/home/linuxbrew/.linuxbrew/bin/zsh"

