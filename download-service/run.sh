#!/bin/sh
echo 'Download from' $URL
echo 'Save to' $OUT

wget -c $URL -O $OUT

if [ $CALLBACK ]; then
    curl $CALLBACK
fi
