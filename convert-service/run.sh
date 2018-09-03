#!/bin/sh
case $QUALITY in
    1080p)
        echo 'convert to 1080p started!'
        ffmpeg -i $INPUT -preset slow -codec:a libfdk_aac -b:a 128k -codec:v libx264 -pix_fmt yuv420p -b:v 4500k -minrate 4500k -maxrate 9000k -bufsize 9000k -vf scale=-1:1080 $OUTPUT;
        ;;
    720p)
        echo 'convert to 720p started!'
        ffmpeg -i $INPUT -preset slow -codec:a libfdk_aac -b:a 128k -codec:v libx264 -pix_fmt yuv420p -b:v 2500k -minrate 1500k -maxrate 4000k -bufsize 5000k -vf scale=-1:720 $OUTPUT;
        ;;
    480p)
        echo 'convert to 480p started!'
        ffmpeg -i $INPUT -preset slow -codec:a libfdk_aac -b:a 128k -codec:v libx264 -pix_fmt yuv420p -b:v 1000k -minrate 500k -maxrate 2000k -bufsize 2000k -vf scale=854:480 $OUTPUT;
        ;;
    360p)
        echo 'convert to 360p started!'
        ffmpeg -i $INPUT -preset slow -codec:a libfdk_aac -b:a 128k -codec:v libx264 -pix_fmt yuv420p -b:v 750k -minrate 400k -maxrate 1000k -bufsize 1500k -vf scale=-1:360 $OUTPUT;
        ;;
    *)
        echo bad args! $QUALITY
        ;;
esac

echo 'complete!'
