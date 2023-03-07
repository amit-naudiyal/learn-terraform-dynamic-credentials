variable "instance_type" {
  description = "Type of EC2 instance to use"
  type        = string
}
variable "tags" {
  description = "Tags for instances"
  type        = map
  default     = {}
}
variable "ignore_tags" {
  description = "Tags to ignore"
  type        = string
}
variable "aws-default-tags" {
  type        = string
}

variable "aws_region" {
  type        = string
  default     = "ap-southeast-2"
  description = "AWS region for all resources"
}

variable "aws_account_number" {
  type        = string
}
variable "vpc_id" {
  type        = string
}
variable "cust_abbrev" {
  type        = string
}
variable "soln_abbrev" {
  type        = string
}
variable "env_abbrev" {
  type        = string
}