#!/usr/bin/sh

SERVICE="cmus"

if pidof $SERVICE > /dev/null
then
	TITLE="$(cmus-remote -Q | grep title | cut -d ' ' -f 3-)"
	ARTIST="$(cmus-remote -Q | grep artist | cut -d ' ' -f 3-)"
	SONG="$ARTIST - $TITLE"
else
   	SONG="n/a"
fi

printf "$SONG\n"
