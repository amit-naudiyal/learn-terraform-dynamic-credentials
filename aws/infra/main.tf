provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      aws-default-tags = "true"
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
