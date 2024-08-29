provider "aws" {
  region = "ap-southeast-1"
}

variable "vpc_id" {}
variable "private_subnet_ids" {
  type = list(string)
}
variable "lambda_role_arn" {}
