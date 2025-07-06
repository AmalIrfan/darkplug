#!/bin/sh

. /etc/darkplug.conf

mecho() {
	echo "Writing '$1' to '$2'."
	echo "$1" > "$2" 
}

mecho "$THRESHOLD" "$THRESHOLD_PATH"
mecho "$BRIGHTNESS" "$BRIGHTNESS_PATH"
