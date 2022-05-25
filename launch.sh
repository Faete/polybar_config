#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Check for multiple monitors and launch
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload bar1 &
done
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

echo "Bars launched..."

