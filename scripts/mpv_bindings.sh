#!/bin/sh

case "$1" in
  -p)
  #echo '{ "command": ["set_property", "pause", true] }' | socat - /tmp/mpvsocket
  echo '{"command": ["cycle", "pause"]}' | socat - /tmp/mpvsocket
  ;;
  -g)
  echo '{"command": ["get_property", "pause"]}' | socat - /tmp/mpvsocket
  ;;
  -nx)
  echo '{"command": ["playlist-next"]}' | socat - /tmp/mpvsocket
  ;;
  -pv)
  echo '{"command": ["playlist-prev"]}' | socat - /tmp/mpvsocket
  ;;
  *)
  echo 'Unknown option.'
esac
