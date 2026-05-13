# Multi App Nginx Platform

![Deploy](https://github.com/kgil0/multi-app-nginx/actions/workflows/deploy.yml/badge.svg)
![Docker CI](https://github.com/kgil0/multi-app-nginx/actions/workflows/docker.yml/badge.svg)
![Docker](https://img.shields.io/badge/Docker-Compose-blue)
![Monitoring](https://img.shields.io/badge/Monitoring-Prometheus%20%2B%20Grafana-orange)
![Logging](https://img.shields.io/badge/Logging-Loki-green)

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
- GitHub Actions CI/CD
- Automated VPS deployment
- Post-deployment health checks
- Kubernetes / k3s integration
- Kubernetes namespaces
- ConfigMaps and Secrets
- NodePort services
- Reverse proxy integration with Kubernetes
- Bash automation scripts
- Cron-based health checks

---

## Stack

### Applications

- Static NGINX-based demo applications
- Multi-container application routing
- Reverse proxy backend failover

### Infrastructure

- Docker
- Docker Compose
- NGINX
- Kubernetes (k3s)
- Bash scripting
- Cron automation

### Monitoring

- Grafana
- Prometheus
- Blackbox Exporter
- Loki
- Promtail
- cAdvisor
- Node Exporter

---

## Architecture

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
```

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

### Kubernetes Status
![Kubernetes Status](screenshots/k8s-status.png)

---

## What I Learned

- Docker container orchestration
- Reverse proxy configuration with NGINX
- HTTPS setup using Let's Encrypt
- Prometheus metrics collection
- Grafana dashboards and observability
- Loki centralized logging
- Docker networking and service isolation
- Firewall hardening with UFW
- Internal-only monitoring architecture
- Infrastructure troubleshooting and debugging
- CI/CD pipelines with GitHub Actions
- Automated deployment to VPS
- Healthcheck validation after deployment
- Kubernetes namespaces management
- ConfigMaps and Secrets handling
- NodePort networking
- Reverse proxy integration with Kubernetes
- Bash scripting for infrastructure automation
- Cron job automation
- Basic AWS EC2 experience
- AWS CLI basics
- Terraform Infrastructure as Code basics

## Kubernetes / k3s

This project also includes basic Kubernetes manifests for deploying an NGINX application on a k3s cluster.

### Implemented Features

- k3s installation on Ubuntu VPS
- Kubernetes Deployment
- Kubernetes ClusterIP Service
- Pod logs and debugging
- Replica scaling
- Rolling update
- Rollback
- Declarative YAML manifests
- Namespaces
- ConfigMaps
- Secrets
- NodePort Services
- Reverse proxy integration with Kubernetes
- Kubernetes healthcheck scripting

Manifests:
- `k8s/deployment.yaml`
- `k8s/service.yaml`

## Related Projects

- Terraform AWS EC2:
  https://github.com/kgil0/terraform-aws-ec2
