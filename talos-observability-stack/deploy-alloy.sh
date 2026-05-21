#!/bin/bash

helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

helm upgrade --install alloy grafana/k8s-monitoring \
  --namespace monitoring \
  --create-namespace \
  -f /home/ashok/Documents/obs/talos-observability-stack/infrastructure/observability/alloy-values.yaml \
  --version 3.5.5 \
  --atomic \
  --wait \
  --timeout 10m
