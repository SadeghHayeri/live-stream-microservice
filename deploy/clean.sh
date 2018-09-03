#!/bin/bash

kubectl delete -f nfs-server-pod.yaml
kubectl delete -f download-job.yaml
kubectl delete -f convert-job.yaml
kubectl delete -f stream-deploy.yaml
