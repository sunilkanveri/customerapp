# .NET API App with MSSQL Server Express Database

This Helm chart deploys a .NET API application with a MySQL database backend. It includes logging, privacy considerations for logging, and leverages telemetry for observability.

## Directory Structure :
customerapp-chart/ 'Contains Helm chart for the application'
│
├── charts/
│   ├── app/
│   │   ├── templates/
│   │   │   ├── app-configmap.yaml
│   │   │   ├── app-deployment.yaml
│   │   │   └── app-service.yaml
│   │   ├── Chart.yaml
│   │   └── values.yaml
│   │
│   └── sqlserver/
│       ├── templates/
│       │   ├── mssql-deployment.yaml
│       │   ├── mssql-pvc.yaml
│       │   ├── mssql-secret.yaml
│       │   └── mssql-service.yaml
│       ├── Chart.yaml
│       └── values.yaml
│
├── templates/
│   ├── Chart.yaml
│   └── values.yaml
│
└── customerapp-code/ 'Contains code base written in C#.NET with MS SQL Server backend'
    ├── bin/
    ├── Controllers/
    ├── Data/
    ├── Models/
    ├── obj/
    ├── Properties/
    └── appsettings.Development.json

## Application Architecture
<img width="845" alt="Screenshot 2024-04-20 at 1 56 27 PM" src="https://github.com/sunilkanveri/customerapp/assets/6409289/bb2e82b6-1172-4cf4-a9dd-33cd46fe6eb5">

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
