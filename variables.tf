### Project Variables ###
variable  "project_name" {
  type        = string
}
variable "environment"{
    type = string
    default = "dev"
}
variable "common_tags" {
    type = map
}

### VPC ###
variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
    type = bool
    default = true
}
variable "vpc_tags"{
    type =map
    default = { }
}


### IGW ###
variable "igw_tags" {
    type = map
    default = { }
}
###  Public Subnet    ####
variable "public_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.public_subnet_cidrs) == 2
    error_message ="Please provide 2 valid public subnets CIDR"
  }
}
variable "public_subnet_cidr_tags" {
    type = map
    default = { }
}
###  Private Subnet    ####
variable "private_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.private_subnet_cidrs) == 2
    error_message ="Please provide 2 valid private subnets CIDR"
  }
}
variable "private_subnet_cidr_tags" {
    type = map
    default = { }
}
###  database Subnet    ####
variable "database_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.database_subnet_cidrs) == 2
    error_message ="Please provide 2 valid database subnets CIDR"
  }
}
variable "database_subnet_cidr_tags" {
    type = map
    default = { }
}
##   NAT Gateway    ##
variable "nat_gateway_tags" {
    type = map
    default = {  }
}

## Public Route table ##
variable "public_route_table_tags" {
    type = map
    default = { }
}
## Private Route table ##
variable "private_route_table_tags" {
    type = map
    default = { }
}
## database Route table ##
variable "database_route_table_tags" {
    type = map
    default = { }
}





























