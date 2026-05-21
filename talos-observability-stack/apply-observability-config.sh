#!/bin/bash

# Apply Prometheus configurations
kubectl apply -f infrastructure/observability/prometheus-config.yaml
kubectl apply -f infrastructure/observability/prometheus-deployment.yaml
kubectl apply -f infrastructure/observability/prometheus-service.yaml

# Apply Loki configurations
kubectl apply -f infrastructure/observability/loki-config.yaml
kubectl apply -f infrastructure/observability/loki-deployment.yaml
kubectl apply -f infrastructure/observability/loki-service.yaml

# Apply Grafana configurations
kubectl apply -f infrastructure/observability/grafana-datasources.yaml
kubectl apply -f infrastructure/observability/grafana-dashboards-config.yaml
kubectl apply -f infrastructure/observability/grafana-dashboards.yaml
kubectl apply -f infrastructure/observability/grafana-deployment.yaml
