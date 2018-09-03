#!/bin/bash

kubectl delete -f ./deploy/nfs-server-pod.yaml
kubectl delete -f ./deploy/download-job.yaml
kubectl delete -f ./deploy/convert-job.yaml
kubectl delete -f ./deploy/stream-deploy.yaml
