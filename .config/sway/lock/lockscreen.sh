#!/bin/bash
set -e;

icon=~/.config/sway/lock/download.png
outputs=( $( swaymsg -t get_outputs -r | jq -r '.[].name') )
for output in "${outputs[@]}"
do
    img=/tmp/wallpaper$output.png
    rm -f $img 
    grim -o $output $img
    convert $img -scale 10% -scale 1000% -fill black -colorize 25% $img
    convert $img $icon -composite -matte $img
done

cmd='swaylock'
for output in "${outputs[@]}"
do
    img=/tmp/wallpaper$output.png
    cmd="$cmd --image=$output:$img"
done
$cmd
