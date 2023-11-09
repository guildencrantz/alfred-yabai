#!/usr/bin/env zsh

source common.sh

$_YABAI -m query --windows | $_JQ '
  {
    "items": [ .[] |
      {
        "title": .title,
        "subtitle": .app,
        "arg": .id,
        "automomplete": .title,
        "match": "\(.title) \(.app)"
      }
    ]
  }
'
