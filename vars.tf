variable "projectName" {
  default = "golunch-terraform-amanda"
}

variable "region_default" {
  default = "us-east-1"
}

variable "cidr_vpc" {
  default = "10.0.0.0/16"
}

variable "tags" {
  default = {
    Name = "golucnh-terraform-amanda"
  }
}

variable "principal_arn" {
  type        = string
  description = "ARN do IAM Role que terá acesso ao cluster EKS"
  default     = "arn:aws:iam::509689628129:role/voclabs"
}

variable "policy_arn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "labRole" {
  default = "arn:aws:iam::509689628129:role/LabRole"
}

variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}