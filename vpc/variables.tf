#VPC
variable "vpc_cidr" {
    default = "10.0.0.0/16"
    description = "VPC CIDR block"
  
}

variable "vpc_name" {
    type=string
    description = "VPC name"
}