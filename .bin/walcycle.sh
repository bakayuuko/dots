#! /bin/sh
#=======================================#
#	pywal script.	#
#=======================================#
# Refresh bspwm's colorscheme.
. "${HOME}/.cache/wal/colors.sh"

bspc config normal_border_color $color0
bspc config focused_border_color $color14
bspc config active_border_color $color0
bspc config presel_feedback_color $color3
