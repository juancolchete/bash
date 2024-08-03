#!/bin/sh
for file in *.flac; do sudo ffmpeg -i "$file" -q:a 0 "${file:0:${#file}-5}.mp3"; done
