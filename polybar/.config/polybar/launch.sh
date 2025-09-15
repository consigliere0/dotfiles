#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using the default config location ~/.config/polybar/polybar/config.ini
polybar top &
polybar -c ~/.config/polybar/config.ini top &

echo "Polybar launched..."
