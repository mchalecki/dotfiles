#!/bin/sh
rotation=`xrandr -q --verbose|grep $1|cut -b37-43`
if [ "$rotation" = '0) norm' ] ;
then
  xrandr --output $1 --rotate left
else
  xrandr --output $1 --rotate normal
fi
