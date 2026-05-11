# Multi App Nginx Platform

Production-ready Docker platform with reverse proxy, monitoring, logging and scalable microservices architecture.

## Features

- Dockerized multi-service architecture
- NGINX reverse proxy
- SSL-ready infrastructure
- Grafana monitoring
- Prometheus metrics
- Loki centralized logging
- Promtail log shipping
- Container observability
- Health checks
- Production networking
- Security-focused setup
- Easy horizontal scaling

---

# Stack

## Backend
- Node.js
- Express

## Infrastructure
- Docker
- Docker Compose
- NGINX

## Monitoring
- Grafana
- Prometheus
- Loki
- Promtail
- cAdvisor
- Node Exporter

---

# Architecture

```text
Internet
    │
    ▼
NGINX Reverse Proxy
    │
    ├── App 1
    ├── App 2
    ├── APIs
    └── Static services

Monitoring Stack
    ├── Prometheus
    ├── Grafana
    ├── Loki
    ├── Promtail
    ├── cAdvisor
    └── Node Exporter

## Architecture Diagram

```mermaid
graph TD

User --> NGINX

NGINX --> APP1
NGINX --> APP2
NGINX --> APP3

Prometheus --> cAdvisor
Prometheus --> NodeExporter
Prometheus --> Blackbox

Grafana --> Prometheus
Grafana --> Loki

Promtail --> Loki

Docker --> Promtail
```

## Screenshots

### Grafana Monitoring Dashboard
![Grafana Dashboard](screenshots/grafana-dashboard.png)

### Loki Logs
![Loki Logs](screenshots/loki-logs.png)

### GitHub Actions CI/CD
![GitHub Actions](screenshots/github-actions.png)

### Running Docker Stack
![Docker Containers](screenshots/docker-ps.png)
