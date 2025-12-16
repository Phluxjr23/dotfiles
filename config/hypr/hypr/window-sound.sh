#!/bin/bash
handle() {
  case $1 in
    openwindow*)
      paplay ~/.sounds/window_open.wav &
      ;;
  esac
}

socat -U - UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do handle "$line"; done
