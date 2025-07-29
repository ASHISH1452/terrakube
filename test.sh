#!/bin/bash

# Update Kubeconfig
aws eks update-kubeconfig --name <cluster_name>

# Check Node Health
kubectl get nodes

# Install Terrakube
helm install terrakube ./terrakube-helm-chart -f terrakube-helm-chart/values.yaml

# Wait for Pods
kubectl wait --for=condition=ready pod --all --timeout=300s -n terrakube

# Workspace Registration and Plan Run Steps
# (These would be API calls or manual in UI for PoC)

