#!/bin/bash

# Define the name of your KIND cluster
CLUSTER_NAME="myCluster"

# Check if KIND is installed
if ! command -v kind &>/dev/null; then
  echo "KIND is not installed. Please install KIND: https://kind.sigs.k8s.io/docs/user/quick-start/"
  exit 1
fi

# Check if the cluster already exists
if kind get clusters | grep -q "$CLUSTER_NAME"; then
  echo "Cluster '$CLUSTER_NAME' already exists. Skipping creation."
else
  # Create a KIND cluster with a single control plane node
  kind create cluster --name "$CLUSTER_NAME"
fi

# Set the cluster context as the current context
kubectl cluster-info --context "kind-$CLUSTER_NAME"

echo "KIND cluster '$CLUSTER_NAME' is now ready."
