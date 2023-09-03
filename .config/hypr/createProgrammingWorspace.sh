#!/bin/bash

kitty -T mainLol &
sleep 0.2
hyprctl dispatch focuswindow title:^mainLol$
sleep 0.2
hyprctl dispatch movecursortocorner 1
sleep 0.2
kitty -T chillPipes pipes.js &
yt playurl 'https://www.youtube.com/watch?v=4xDzrJKXOOY&ab_channel=LofiGirl' &
while :; do
  if [[ $(hyprctl clients) == *"probablyLofiLol"* ]]; then
    break
  fi
done
hyprctl dispatch focuswindow title:^mainLol$
hyprctl dispatch togglesplit
hyprctl dispatch splitratio 0.45
hyprctl dispatch focuswindow title:^chillPipes$
hyprctl dispatch togglesplit
hyprctl dispatch splitratio 0.38
hyprctl dispatch focuswindow title:^mainLol$
