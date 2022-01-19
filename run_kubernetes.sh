#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
dockerpath=sunnynatwest/udacity-devops-project4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-devops-project4 \
    --image=$dockerpath \
    --port=80 \
    --labels app=udacity-devops-project4  # Kubernetes label must be DNS-compliant


# Step 3:
# List kubernetes pods
kubectl get pods


# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-devops-project4 8000:80
