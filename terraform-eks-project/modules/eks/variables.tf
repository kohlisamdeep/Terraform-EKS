# modules/eks/variables.tf

variable "vpc_id" {
  type        = string
  description = "VPC ID from the network module"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnet IDs from the network module"
}