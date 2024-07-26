variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "main-vpc"
}

variable "ec2_name" {
  description = "Name of EC2"
  type        = string
  default     = "ce6-capstone-automate-report" #choose a name
}

variable "instance_type" {
  description = "Instance type of EC2"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of EC2 key pair pem file"
  type        = string
  default     = "key-name" #input your own key.pem
}

variable "subnet_name" {
  description = "Name of subnet to deploy EC2 in"
  type        = string
  default     = "ce6-capstone public" #choose a name
}

variable "raw_bucket_name" {
  description = "Name of S3 bucket to store raw files"
  type        = string
  default     = "raw-files-s3" #choose a name
}

variable "report_bucket_name" {
  description = "Name of S3 bucket to store processed files"
  type        = string
  default     = "processed-files-s3" #choose a name
}

variable "sg_name" {
  description = "Name of security group to create"
  type        = string
  default     = "very-secure" #choose a name
}
