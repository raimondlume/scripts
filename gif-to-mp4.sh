#!/bin/sh

echo "Converting file $1 to mp4..."
ffmpeg -i $1 -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" output.mp4
echo "$1 converted to output.mp4!"
