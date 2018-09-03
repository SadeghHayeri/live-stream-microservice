#!/bin/bash

docker build -t sadeghhayeri/live-stream:download-service ../download-service
docker build -t sadeghhayeri/live-stream:convert-service ../convert-service
docker build -t sadeghhayeri/live-stream:stream-service ../stream-service
