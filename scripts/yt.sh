#!/bin/sh
if [[ "x$1" == "x" ]]; then
  echo "Usage: `basename "$0"` <URL>"
else
  #title=`youtube-dl --skip-download --get-title $1`
  mpv --input-ipc-server=/tmp/mpvsocket --no-video --term-playing-msg='### ${media-title} ###' $1
fi
