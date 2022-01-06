xrdb -merge .Xdefaults &

xrandr --output eDP-1 --off --output DP-1 --primary --mode 1024x768 --pos 0x0 --rotate normal --brightness 0.65 --gamma 0.65:0.65:0.65 &
feh --bg-fill ~/Pictures/wallpaper.png &
exec compton &
exec slstatus &
exec dwm 
