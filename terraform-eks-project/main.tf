# root main.tf

module "network" {
  source = "./modules/vpc"
}

module "kubernetes" {
  source     = "./modules/eks"
  vpc_id     = module.network.vpc_id          # Matches the output in modules/vpc
  subnet_ids = module.network.private_subnets # Matches the output in modules/vpc
}