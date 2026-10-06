#!/usr/bin/env bash

set -euo pipefail

echo "=========================================="
echo " Network Monitor Setup"
echo "=========================================="

if ! command -v docker >/dev/null 2>&1; then
    echo "ERROR: Docker is not installed."
    exit 1
fi

if ! docker compose version >/dev/null 2>&1; then
    echo "ERROR: Docker Compose is not available."
    exit 1
fi

echo
echo "Checking configuration..."

if [ ! -f ".env" ]; then

    echo "Creating .env from .env.example"

    cp .env.example .env

    echo
    echo "IMPORTANT:"
    echo "Edit .env before continuing."
    echo

    exit 1
fi

if [ ! -f "secrets/influxdb-admin-token.json" ]; then

    echo
    echo "ERROR: Missing InfluxDB admin token."
    echo
    echo "Create:"
    echo "  secrets/influxdb-admin-token.json"
    echo

    exit 1
fi

echo
echo "Pulling container images..."

docker compose pull

echo
echo "Starting Network Monitor..."

docker compose up -d

echo
echo "Container status:"

docker compose ps

echo
echo "=========================================="
echo " Network Monitor Started"
echo "=========================================="

echo
echo "Grafana:"
echo "  http://localhost:3000"

echo
echo "InfluxDB:"
echo "  http://localhost:8181"