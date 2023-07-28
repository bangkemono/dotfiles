xrdb -merge .Xresources &

xrandr --output eDP-1 --primary --mode 1366x768 --pos 1024x0 --rotate normal --output DP-1 --mode 1024x768 --pos 0x0 --rotate normal --brightness 0.85 --gamma 0.7:0.7:0.7 &
feh --bg-scale ~/Pictures/wall_imgs/def/wallpaper.png --bg-fill ~/Pictures/wall_imgs/crt/crt.png &
/*feh --bg-scale ~/Pictures/anime-street.png --bg-fill ~/Pictures/anime_street_2.jpg &*/
/*feh --bg-scale ~/Pictures/anime-street.png --bg-fill ~/Pictures/ampera.png &*/

/*xrandr --output eDP-1 --primary --mode 1366x768 --pos 0x0 --rotate normal &*/
/*feh --bg-fill ~/Pictures/sucrose_fall.jpg &*/
/*feh --bg-fill ~/Pictures/sick4.jpg &*/
/*feh --bg-fill ~/Pictures/laplus_wallpaper.png &*/
/*feh --bg-fill ~/Pictures/crt-girl.jpg &*/
/*feh --bg-fill ~/Pictures/red-eyes.jpg & */
/*feh --bg-fill ~/Pictures/wallpaper.png &*/
exec compton &
exec slstatus &
exec dwm 
