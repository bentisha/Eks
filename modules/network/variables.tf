
variable "vpc_name" {
  type = string
  validation {
    condition     = length(var.vpc_name) > 3
    error_message = "Le nom du VPC doit contenir plus de 3 caractères."
  }
}

variable "cidr_block" {
  type = string
}

variable "public_subnets" {
  type = list(object({
    name              = string
    cidr_block        = string
    availability_zone = string
  }))
} 

variable "private_subnets" {
  type = list(object({
    name              = string
    cidr_block        = string
    availability_zone = string
  }))
}

variable "igw_name" {
  type = string
}

variable "eip_name" {
  type = string
}

variable "nat_gateway_name" {
  type = string
} 


variable "env" {
  type = string
}

variable "public_sg_rules_ingress" {
  type = list(object({
    sg_name   = string
    rule_type = string
    cidr      = string
  }))
}

variable "private_sg_rules_ingress" {
  type = list(object({
    sg_name   = string
    rule_type = string
    cidr      = string
  }))
}  

