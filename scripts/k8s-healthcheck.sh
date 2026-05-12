#!/bin/bash

DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "[$DATE] Kubernetes pod status:" >> k8s-health.log

sudo kubectl get pods -n dev >> k8s-health.log

echo "_____________________________" >> k8s-health.log
