#!/bin/bash
FILES=/content/video/*
for f in $FILES
do
  filename="$(basename -- $f)"
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  ffmpeg -i $f  -vf fps=1  /content/video/image_export/$filename-%d.jpg
done
