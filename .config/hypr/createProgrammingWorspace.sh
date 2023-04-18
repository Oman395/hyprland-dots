#!/bin/bash

kitty -T mainLol &
sleep 0.2
hyprctl dispatch focuswindow title:^mainLol$
sleep 0.2
hyprctl dispatch movecursortocorner 1
sleep 0.2
kitty -T chillPipes pipes.js &
yt playurl 'https://www.youtube.com/watch?v=MVPTGNGiI-4&ab_channel=LofiGirl' &
sleep 4
hyprctl dispatch focuswindow title:^mainLol$
hyprctl dispatch togglesplit
hyprctl dispatch splitratio 0.3
hyprctl dispatch focuswindow title:^chillPipes$
hyprctl dispatch togglesplit
hyprctl dispatch splitratio 0.2
hyprctl dispatch focuswindow title:^mainLol$
