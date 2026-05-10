# Multi App Nginx Stack

Production-style Docker infrastructure project with:

- Nginx reverse proxy
- HTTPS (Let's Encrypt)
- Prometheus monitoring
- Grafana dashboards
- Loki log aggregation
- Promtail log shipping
- Alertmanager Discord alerts
- GitHub Actions CI/CD
- Automatic VPS deployment over SSH

## Stack

- Docker Compose
- Nginx
- Prometheus
- Grafana
- Loki
- Promtail
- Alertmanager
- GitHub Actions
- Ubuntu VPS

## Features

- Reverse proxy load balancing
- TLS/SSL termination
- Security headers
- Rate limiting
- Bot filtering
- Container monitoring
- Discord alerting
- Automated deployments

## Deployment

```bash
docker-compose up -d
