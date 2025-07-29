# Security Notes

## IAM Roles & Policies
- EKS Cluster Role
- Node Group Role with limited permissions
- IRSA for Terrakube Pods

## Network Controls
- VPC with public and private subnets
- Security Groups for EKS Nodes and LoadBalancer

## Scanning Tools
- KICS for IaC scanning
- Terrascan for policy enforcement
- Trivy for Docker image scanning
