module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0" # Upgrade to version 20 for better AWS v5 support

  cluster_name    = "phoenix-cluster"
  cluster_version = "1.28"

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids
  
  # Note: In version 20, some argument names might differ slightly.
  # If you get a 'control_plane_subnet_ids' error, add this line:
  control_plane_subnet_ids = var.subnet_ids

  eks_managed_node_groups = {
    general = {
      instance_types = ["t3.medium"]
      min_size     = 1
      max_size     = 3
      desired_size = 2
    }
  }
}