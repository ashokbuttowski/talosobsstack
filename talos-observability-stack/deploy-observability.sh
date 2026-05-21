#!/bin/bash

# Apply observability configurations
kubectl apply -f infrastructure/observability/prometheus-observability.yaml
kubectl apply -f infrastructure/observability/loki-observability.yaml
kubectl apply -f infrastructure/observability/grafana-observability.yaml

# Validate the deployment
echo "Checking Alloys in the 'monitoring' namespace..."
kubectl get alloys -n monitoring

echo "Describing prometheus-observability..."
kubectl describe alloy -n monitoring prometheus-observability

echo "Describing loki-observability..."
kubectl describe alloy -n monitoring loki-observability

echo "Describing grafana-observability..."
kubectl describe alloy -n monitoring grafana-observability
