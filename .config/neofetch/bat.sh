#!/bin/bash
col0=0
col1=6
bat=$(cat /sys/class/power_supply/BAT1/capacity)
bat=$((bat/4))
remain=$((25-bat))

printf "%s" "\x1b[${col1};31m<"
python -c "print(\"-\" * $bat, end = \"\")"
printf "%s" "\x1b[${col0};31m"
python -c "print(\"#\" * $remain, end = \"\")"
printf "%s" ">"
