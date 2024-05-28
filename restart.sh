#!/usr/bin/env zsh

# TODO: Make this a workflow variable
# TODO: Allow for actually listing and looking for yabai
SVC=com.koekeishiya.yabai

if [ ! $(launchctl list $SVC) ]; then
  SVC=org.nixos.yabai
fi

set -x
launchctl stop $SVC
launchctl start $SVC
