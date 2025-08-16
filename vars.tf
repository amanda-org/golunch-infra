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