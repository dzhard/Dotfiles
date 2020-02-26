#!/bin/bash

lang=$(xset -q | grep -A 0 'LED' | cut -c59-67 | cut -c5)

if [ $(($lang & 1)) == 1 ]
then
    echo "<span color='#FFD700'>RU</span>"
else
    echo "<span color='#32CD32'>EN</span>"
fi
