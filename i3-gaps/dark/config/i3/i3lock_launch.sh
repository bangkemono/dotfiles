# Fedora doesn't have scrot in its repo and rpmfusions
# if that's the case then i'll just use maim instead

# screenshots the current active background
maim /home/stritesb76/.config/i3/background.png -i='root'

# Blurs Image
IMG=/home/stritesb76/.config/i3/background.png
BLURTYPE='0x4'
convert $IMG -resize 50%
convert $IMG -blur $BLURTYPE $IMG
convert $IMG -resize 200%

# locks the screen with the active background
i3lock -i $IMG

# removes old background
rm $IMG
