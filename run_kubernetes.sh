#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="eloper1/mlproject"

# Step 2
# Run the Docker Hub container with kubernetes
# the ImagePullPolicy asists in directing Dcoker to 1st pull the image locally before going to dockerHub
# Another imagePullPolicy is - Never | see also https://stackoverflow.com/questions/40144138/pull-a-local-image-to-run-a-pod-in-kubernetes/40150867#40150867
kubectl run mlproject\
    --image=$dockerpath\
    --port=80 --image-pull-policy=IfNotPresent --labels app=mlproject\

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward mlproject 8000:80
