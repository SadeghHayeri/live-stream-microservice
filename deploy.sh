#!/bin/bash

kubectl create -f ./deploy/nfs-server-pod.yaml
kubectl create -f ./deploy/download-job.yaml
kubectl create -f ./deploy/convert-job.yaml
kubectl create -f ./deploy/stream-deploy.yaml
