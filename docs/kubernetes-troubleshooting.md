# Kubernetes Troubleshooting Notes

## NodePort Service Flow

```text
localhost:30080
→ NodePort Service
→ Kubernetes Service
→ Pod endpoint
→ NGINX container
