# Terrakube on Amazon EKS

## Setup Instructions
1. 悪 Configure AWS CLI with credentials.
2. Run Terraform:
    terraform init
    terraform apply -auto-approve
3. Update kubeconfig:
    aws eks update-kubeconfig --name <cluster_name>
4. Deploy Terrakube via Helm:
    helm install terrakube ./terrakube-helm-chart -f terrakube-helm-chart/values.yaml
5. Access Terrakube UI via LoadBalancer URL.

## Teardown Instructions
    terraform destroy -auto-approve
