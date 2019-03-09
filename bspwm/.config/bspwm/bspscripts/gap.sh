#!/bin/sh

case "$1" in
	tog)
		if [ 0 -lt $((`bspc config window_gap`)) ]; then
			bspc config window_gap 0
		else
			bspc config window_gap 12
		fi
		;;
	dec)
		if [ 0 -ne $((`bspc config window_gap`)) ]; then
			bspc config window_gap $(( `bspc config -d focused window_gap` - 3))
		fi
		;;
	inc)
		bspc config window_gap $(( `bspc config -d focused window_gap` + 3))
		;;
esac
