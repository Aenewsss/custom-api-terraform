module "eks_network" {
  source = "./modules/network"

  project = var.project
  tags    = var.tags
}

module "eks_cluster" {
  source = "./modules/cluster"

  project           = var.project
  tags              = var.tags
  subnet_public_ids = module.eks_network.subnet_public_ids
}

module "eks_managed_node_group" {
  source = "./modules/managed-node-group"

  project            = var.project
  cluster_name       = module.eks_cluster.cluster_name
  subnet_private_ids = module.eks_network.subnet_private_ids
  tags               = var.tags
}

module "eks_load_balancer_controller" {
  source = "./modules/load-balancer-controller"

  project      = var.project
  oidc         = module.eks_cluster.oidc
  cluster_name = module.eks_cluster.cluster_name
  tags         = var.tags
}
