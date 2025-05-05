variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "ridchenko-cluster"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "node_group_name" {
  description = "Name of the node group"
  type        = string
  default     = "ridchenko-nodes"
}

variable "security_group_name" {
  description = "Name of the node group"
  type        = string
  default     = "SG-Ridchenko"
}

variable "security_group_description" {
  description = "Name of the node group"
  type        = string
  default     = ""
}

variable "allow_ports" {
  description = "List allow ports"
  type        = list(any)
  default     = ["80", "443", "22"]
}

variable "node_instance_type" {
  description = "Instance type for worker nodes"
  type        = string
  default     = "t3.micro"
}

variable "common_tags" {
  description = "Tags"
  type        = map(any)
  default = {
    Project = "Terraform_diplom1"
    Owner   = "Ridchenko_Andrey"
  }
}

variable "ecr_name" {
  description = "Name of the node group"
  type        = string
  default     = "erc-ridchenko"
}

variable "bucket_name" {
  description = "Name of the node group"
  type        = string
  default     = "bucket-ridchenko"
}


