for file in *.flac; do sudo ffmpeg -i "$file" -q:a 0 "${file:r}.mp3"; done
