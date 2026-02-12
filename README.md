# Enterprise EKS Platform: Project Phoenix

## 🏗️ Architecture
- **VPC:** 3-tier architecture (Public/Private/Database subnets) across 3 AZs for high availability.
- **EKS:** Version 1.28 with Managed Node Groups.
- **Security:** IAM Roles for Service Accounts (IRSA), Private node access, and KMS encryption.
- **CI/CD:** Automated via GitHub Actions with security linting (Checkov).

## 🚀 Deployment
1. `terraform init` to initialize backend (S3/DynamoDB).
2. GitHub Actions handles `terraform plan` on PRs and `terraform apply` on merge to `main`.

## 📈 Strategic TAM/SRE Value
- **Scalability:** Designed for horizontal pod autoscaling and multi-AZ resilience.
- **Efficiency:** Utilizes Single NAT Gateway for cost-optimization in non-prod environments.
- **Governance:** Infrastructure-as-Code ensures 100% auditability and drift detection.
