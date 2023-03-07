provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      aws-default-tags = var.aws-default-tags
    }
  } 
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}
