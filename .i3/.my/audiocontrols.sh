#!/bin/bash


case "$1" in
  play)
  		playerctl play-pause;;
  next)
	playerctl next;;

  prev)
	playerctl previous;;

  stop)
	playerctl stop;;

  *)
	exit 0
esac
 
exit 0