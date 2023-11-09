#!/usr/bin/env zsh

unset _ERR

_YABAI=$(which yabai || echo /usr/local/bin/yabai)
if [[ ! -e "$_YABAI" ]]; then
  [[ -n $_ERR ]] && _ERR+=","
  _ERR+='{ "title": "yabai not found", "subtitle": "manually run brew install yabai" }'
fi

_JQ=$(which jq || echo /usr/local/bin/jq)
if [ ! -e "$_JQ" ]; then
  [[ -n $_ERR ]] && _ERR+=","
  _ERR+='{ "title": "jq not found", "subtitle": "manuall run brew install jq" }'
fi

if [[ -n $_ERR ]]; then
  printf '{ "items": [ %s ] }' "$_ERR"
  exit 1
fi

