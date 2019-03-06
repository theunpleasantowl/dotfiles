#!/bin/bash

GAP=/tmp/bspwmgap

if [ ! -f $GAP ]; then
	bspc config window_gap 0
	touch $GAP
else
	bspc config window_gap 12
	rm $GAP
fi
