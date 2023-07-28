#!/usr/bin/bash

rofi_start='rofi -theme laplus_square'

# confirm
confirmation() {
    echo -e "Yes\nNo"| $rofi_start -font "BigBlueTerm437 Nerd Font 9" -no-fixed-num-lines -dmenu -p "Are you Sure? "
}

options="Shutdown\nReboot\nLock\nLogout"

chosen="$(echo -e "$options" | $rofi_start -font "BigBlueTerm437 Nerd Font 9" -p "Power Options" -dmenu -selected-row 2 -lines 4 padding)"
case $chosen in
    Shutdown)
  ans=$(confirmation &)
  if [[ $ans == "Yes" || $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
   systemctl poweroff
  elif [[ $ans == "No" || $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
   exit 0
        fi
        ;;
    Reboot)
  ans=$(confirmation &)
  if [[ $ans == "Yes" || $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
   systemctl reboot
  elif [[ $ans == "No" || $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
   exit 0
        fi
        ;;
    Lock)
    ~/.config/i3/i3lock_launch.sh
        ;;
    Logout)
  ans=$(confirmation &)
  if [[ $ans == "Yes" || $ans == "yes" || $ans == "YES" || $ans == "y" || $ans == "Y" ]]; then
      pidof i3 > /dev/null && i3-msg exit || killall dwm
  elif [[ $ans == "No" || $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
   exit 0
        fi
        ;;
esac
