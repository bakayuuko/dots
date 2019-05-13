#!/usr/bin/env bash
# get gaps and padding bspwm focused monitor to small
p=$(bspc config -d focused top_padding)

if [[ "$p" != "130" ]]
then
	bspc config -d focused top_padding    130
	bspc config -d focused bottom_padding 130
	bspc config -d focused left_padding   240
	bspc config -d focused right_padding  240
	bspc config -d focused window_gap       5
else
	bspc config -d focused top_padding    22
	bspc config -d focused bottom_padding 22
	bspc config -d focused left_padding   0
	bspc config -d focused right_padding  0
	bspc config -d focused window_gap     10
fi


