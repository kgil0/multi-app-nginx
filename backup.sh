#!/bin/bash

set -e

BACKUP_DIR="$HOME/rebuild-test/backups"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/config_backup-$DATE.tar.gz" \
docker-compose.yml \
nginx.conf \
prometheus.yml \
alerts.yml \
promtail.yml \
alertmanager.yml \
README.md \
.github

find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +7 -delete

echo "Backup created successfully"
