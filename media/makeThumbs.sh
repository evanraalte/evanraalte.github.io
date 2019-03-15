#!/bin/bash
FILES=goa/*
for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  thumbName="${f%.*}-thumb.jpg"
  convert -resize 150x150 -quality 50 $f $thumbName
done
