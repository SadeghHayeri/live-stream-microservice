#!/bin/bash

kubectl create -f nfs-server-pod.yaml
kubectl create -f download-job.yaml
kubectl create -f convert-job.yaml
kubectl create -f stream-deploy.yaml
