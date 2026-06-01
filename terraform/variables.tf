variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-north-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "yousef-portfolio-terraform"
}

variable "project_name" {
  description = "Project name used for tagging"
  type        = string
  default     = "aws-secure-static-portfolio"
}
