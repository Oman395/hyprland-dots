#!/bin/bash

title="Power"
widthpercent=50

typeset -A menu
menu=(
  [Power off]="poweroff"
  [Restart]="reboot"
  [Sleep]="systemctl suspend"
  [Log off]="swaylock -c 24273a -p"
  )
