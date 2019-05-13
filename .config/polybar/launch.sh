#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar
# polybar top --quiet &
polybar -c ~/.config/polybar/config.top top -q &
polybar -c ~/.config/polybar/config.bottom bottom -q &
bspc config top_padding 22 &
bspc config bottom_padding 22 & 

echo "Bars launches..."