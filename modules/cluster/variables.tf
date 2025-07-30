variable "tags" {
  type = map(string)
}

variable "project" {
  type = string
}

variable "subnet_public_ids" {
  type        = list(string)
  description = "List of public subnet IDs to be used by the EKS cluster."
}
