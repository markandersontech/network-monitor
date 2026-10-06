#!/usr/bin/env bash

set -euo pipefail

echo "=========================================="
echo " Network Monitor Validation"
echo "=========================================="

echo
echo "Validating Docker Compose configuration..."

docker compose config >/dev/null

echo "Docker Compose configuration: OK"

echo
echo "Container status:"

docker compose ps

echo
echo "Testing InfluxDB..."

if curl -fsS http://localhost:8181/health >/dev/null; then
    echo "InfluxDB: OK"
else
    echo "InfluxDB: FAILED"
fi

echo
echo "Testing Grafana..."

if curl -fsS http://localhost:3000/api/health >/dev/null; then
    echo "Grafana: OK"
else
    echo "Grafana: FAILED"
fi

echo
echo "Validation complete."