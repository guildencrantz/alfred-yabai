#!/usr/bin/env zsh

source common.sh

$_YABAI -m window "$1" --space mouse

if [[ $($_YABAI -m query --windows --window "$1" | $_JQ '."is-minimized"') == "true" ]]; then
  $_YABAI -m window --deminimize "$1"
fi
