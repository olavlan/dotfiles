#!/bin/zsh

source ~/zshrc

#set system fonts to Open Sans
system_font="Open Sans Bold 14"
gsettings set $DCONF_INTERFACE font-name "$system_font"
gsettings set $DCONF_INTERFACE document-font-name "$system_font"

#set terminal font
gsettings set $DCONF_TERMINAL_PROFILE use-system-font false
gsettings set $DCONF_TERMINAL_PROFILE font "Monospace Bold 15"

# set default shell
