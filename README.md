# .NET API App with MSSQL Server Express Database

This Helm chart deploys a .NET API application with a MySQL database backend. It includes logging, privacy considerations for logging, and leverages telemetry for observability.


## Directory Structure :
<img width="380" alt="Screenshot 2024-04-20 at 2 15 32 PM" src="https://github.com/sunilkanveri/customerapp/assets/6409289/8b9d4b08-b70e-4966-9e06-9bd9afb4ee35">

## Application Architecture
<img width="845" alt="Screenshot 2024-04-20 at 1 56 27 PM" src="https://github.com/sunilkanveri/customerapp/assets/6409289/bb2e82b6-1172-4cf4-a9dd-33cd46fe6eb5">

## Prerequisites

- Kubernetes installed
- Helm installed
- NGINX Crd Installed

## Installation

1. Add the required Helm repositories:

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add prometheus https://prometheus-community.github.io/helm-charts
helm repo update
helm dependency update
helm dependency build
helm install customerapp .

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
