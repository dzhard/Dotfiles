!/bin/sh
exec xautolock -detectsleep \
  -time 5 -locker "~/.config/i3/lock/lockscreen.sh" \
  -notify 30 \
  -notifier "notify-send -u critical -t 10000 -i ~/.config/awesome/lockscreen-512.png -- 'LOCKING screen in 30 seconds'"
