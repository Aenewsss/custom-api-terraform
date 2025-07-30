module "eks_network" {
  source = "./modules/network"

  project = var.project
  tags    = local.tags
}
