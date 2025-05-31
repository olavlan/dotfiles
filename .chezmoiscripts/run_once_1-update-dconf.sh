#!/bin/bash

# set system fonts to Open Sans
system_font="Open Sans Bold 14"
dconf_schema="org.gnome.desktop.interface"
gsettings set $dconf_schema font-name "$system_font"
gsettings set $dconf_schema document-font-name "$system_font"

# set terminal font
profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
profile=${profile:1:-1}
dconf_schema="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/"
gsettings set $dconf_schema use-system-font false
gsettings set $dconf_schema font "Monospace Bold 15"

# set terminal color palette
palette=$(python3 ~/.scripts/palette.py)
gsettings set $dconf_schema palette "$palette"
