variable "tags" {
  type = map(string)
}

variable "project" {
  type = string
}

variable "cluster_name" {
  type        = string
  description = "value of the EKS cluster name"
}

variable "subnet_private_ids" {
  type        = list(string)
  description = "List of private subnet IDs for the EKS managed node group"
}
