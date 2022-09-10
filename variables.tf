variable "cidr_vpc" {
  description = "CIDR block for the VPC"
}
variable "cidr_subnet" {
  description = "CIDR block for the subnet"
}
variable "availability_zone" {
  description = "Availability zone to create subnet"
}
variable "key_name" {
  description = "key name"
}
variable "instance_ami" {
  description = "AMI for aws EC2 instance"
}
variable "instance_type" {
  description = "Type for AWS EC2 instance"
}
variable "environment_tag" {
  description = "Environment tag"
}
variable "instance_name" {
  description = "Name of the instance"
}
variable "user_data" {
  description = "Name of the instance"
}

