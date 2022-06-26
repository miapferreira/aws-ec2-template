variable "region" {
  description = "the default region"
  default     = "us-east-1"
}

variable "bucket" {
  description = "bucket used to save remote backend"
  default     = "terraform"
}

variable "project_name" {
  description = "Name of project"
  default     = "lab-k8s"
}

variable "ami_owner" {
  description = "the owner of ami na aws"
  default     = "amazon"
}

variable "instance_type" {
  description = "type of instance that will be used"
  default     = "t2.micro"
}

variable "key_pair" {
  description = "key for ssh access on the instance"
  default     = "sua chave .pem"
}

variable "volume_type" {
  description = "The type of volume. Can be 'standard', 'gp2', 'io1', 'sc1', or 'st1'"
  type        = string
  default     = "gp2"
}

variable "disk_size" {
  description = "The size of the root volume in gigabytes."
  type        = string
  default     = "8"
}