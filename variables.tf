variable "ami" {
  type        = string
  description = "AMI ID for the EC2 Instance. It uses an Ubuntu image"
}

variable "name_prefix" {
  type        = string
  description = "name of the owner as prefix"
}

variable "region" {
  type        = string
  description = "region that host all this infrastructure"

}

variable "ami_type" {
  type        = string
  description = "Instance type for the EC2 instance"

}

variable "tf_key_pair_name" {
  type        = string
  description = "name of the key pair used for the EC2 instance"
  default     = "tf-key-pair"
}

variable "all_ip_cidr" {
  type        = string
  description = "CIDR block that represents all IPs"
  default     = "0.0.0.0/0"
}

variable "public_subnet1_cidr" {
  type        = string
  description = "CIDR block that represents the public subnet"
  default     = "10.2.2.0/24"
}

variable "public_subnet2_cidr" {
  type        = string
  description = "CIDR block that represents the public subnet"
  default     = "10.2.3.0/24"
}

variable "main_vpc_cidr" {
  type        = string
  description = "CIDR block that the main VPC uses"
  default     = "10.2.0.0/16"
}

variable "ecr_repository_name" {
  type        = string
  description = "Name of ECR repository"
}