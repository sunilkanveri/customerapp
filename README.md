# .NET API App with MSSQL Server Express Database

This Helm chart deploys a .NET API application with a MySQL database backend. It includes logging, privacy considerations for logging, and leverages telemetry for observability.
- CustomerApp-Chart : Contains Helm chart for the application
- CustomerApp-Code : Contains code base written in C#.NET with MS SQL Server backend
- 
## Prerequisites

- Kubernetes cluster
- Helm installed

## Installation

1. Add the required Helm repositories:

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add prometheus https://prometheus-community.github.io/helm-charts
helm repo update
helm dependency update
helm dependency build
helm install customerapp .


2. Ports

Grafrana:
Port: 3000
user: admin
password: prom-operator

API:
Port: 80

DB:
Port: 1433