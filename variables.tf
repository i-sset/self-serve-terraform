variable "ami" {
  type        = string
  description = "AMI ID for the EC2 Instance. It uses an Ubuntu image"
  default     = "ami-00874d747dde814fa"

}

variable "ami_type" {
  type        = string
  description = "Instance type for the EC2 instance"
  default     = "t2.micro"
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

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR block that represents the public subnet"
  default     = "10.2.2.0/24"
}

variable "main_vpc_cidr" {
  type        = string
  description = "CIDR block that the main VPC uses"
  default     = "10.2.0.0/16"
}
