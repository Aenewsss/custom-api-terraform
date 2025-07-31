variable "project" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "oidc" {
  type        = string
  description = "Https URL from OIDC provider of the EKS Cluster"
}

variable "cluster_name" {
  type = string
}
