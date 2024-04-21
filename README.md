# .NET API App with MSSQL Server Express Database

This Helm chart deploys a .NET API application with a MySQL database backend. It includes logging, privacy considerations for logging, and leverages telemetry for observability.


## Directory Structure :
<img width="309" alt="Screenshot 2024-04-21 at 7 35 29 PM" src="https://github.com/sunilkanveri/customerapp/assets/6409289/7e763cb0-681c-4a51-8201-e3dcefe09681">


## Application Architecture
<img width="845" alt="Screenshot 2024-04-20 at 1 56 27 PM" src="https://github.com/sunilkanveri/customerapp/assets/6409289/bb2e82b6-1172-4cf4-a9dd-33cd46fe6eb5">

## Technology Stack
- Kubernetes 
- Helm
- .NET
- C#
- SQL Server
- DNS
- SSL

## Prerequisites

- Kubernetes installed
- Helm installed
- NGINX Crd Installed

## Installation

1. Add the required Helm repositories:

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add prometheus https://prometheus-community.github.io/helm-charts
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm dependency update
helm dependency build
kubectl create namespace customerapp-space
helm install customerapp .
Modify etc/hosts file and 127.0.0.1 customerapp.local

2. Creating Database Objects: 
kubectl cp scripts/customer.sql customerapp-space/[POD-NAME]:/tmp/init.sql
kubectl exec -n customerapp-space POD-NAME]  -- /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'Default@1245' -i /tmp/init.sql

2. Ports
Grafrana:
Port: 3000
user: admin
password: prom-operator

API:
Port: 80

DB:
Port: 1433
