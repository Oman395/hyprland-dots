#!/bin/bash
status=$(playerctl status)
if [ "$status" != "Paused" ] && [ "$status" != "Playing" ] 
then
  echo '{"text": "Nothing'\''s playing right now!", "tooltip": "", "alt": ""}'
  exit
fi
playerctl metadata --format '{"text": "{{artist}} ~ {{markup_escape(title)}}", "tooltip": "{{playerName}} : {{markup_escape(title)}}", "alt": "{{status}}", "class": "{{status}}"}' && exit
