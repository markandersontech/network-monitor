#!/usr/bin/env bash

set -euo pipefail

BACKUP_ROOT="./backups"

TIMESTAMP=$(date +"%Y%m%d-%H%M%S")

BACKUP_DIR="${BACKUP_ROOT}/${TIMESTAMP}"

mkdir -p "${BACKUP_DIR}"

echo "=========================================="
echo " Network Monitor Backup"
echo "=========================================="

echo
echo "Backup directory:"
echo "${BACKUP_DIR}"

echo
echo "Backing up Grafana..."

tar -czf \
    "${BACKUP_DIR}/grafana.tar.gz" \
    ./data/grafana

echo "Backing up InfluxDB..."

tar -czf \
    "${BACKUP_DIR}/influxdb.tar.gz" \
    ./data/influxdb

echo
echo "Backup complete."