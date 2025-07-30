module "eks_network" {
  source = "./modules/network"

  project = var.project
  tags    = local.tags
}

module "eks_cluster" {
  source = "./modules/cluster"

  project           = var.project
  tags              = local.tags
  subnet_public_ids = module.eks_network.subnet_public_ids
}
