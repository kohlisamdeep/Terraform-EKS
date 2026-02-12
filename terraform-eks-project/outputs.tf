# outputs.tf (Root)

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  # In v20, the attribute is usually 'cluster_endpoint' 
  # but ensure your module/eks/outputs.tf is passing it correctly.
  value       = module.kubernetes.cluster_endpoint
}

output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = module.kubernetes.cluster_name
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.network.vpc_id
}