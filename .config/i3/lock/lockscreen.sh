#!/bin/bash
#depends on: imagemagick, i3lock, scrot
 
IMAGE=/tmp/lockscreen.png
ICON=~/.config/i3/lock/download.png
 
rm $IMAGE
scrot $IMAGE
convert $IMAGE -scale 10% -scale 1000% -fill black -colorize 25% $IMAGE

convert $IMAGE $ICON -gravity west -composite -matte $IMAGE
convert $IMAGE $ICON -gravity east -composite -matte $IMAGE

B='#00000000'  # blank
C='#ffffff22' # clear ish
D='#00000000'  # default
T='#00000000'  # text
W='#880000bb'  # wrong
V='#bb00bbbb'  # verifying
i3lock -i $IMAGE \
--insidevercolor=$C \
--ringvercolor=$V \
--insidewrongcolor=$C \
--ringwrongcolor=$W \
--insidecolor=$B \
--ringcolor=$D \
--linecolor=$B \
--separatorcolor=$D \
--verifcolor=$T \
--wrongcolor=$T \
--timecolor=$T \
--datecolor=$T \
--layoutcolor=$T \
--keyhlcolor=$W \
--bshlcolor=$W \
--screen 1 \
--blur 5 \
--clock \
--indicator \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \
--keylayout 2
