#!/bin/sh
wget -c $URL -O $OUTPUT

if [ $CALLBACK ]; then
    curl $CALLBACK
fi
