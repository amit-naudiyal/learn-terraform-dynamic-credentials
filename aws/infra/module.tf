module "remote_desktop" {
  source                    = "app.terraform.io/tc-amit-org/remote-desktop/aws"
  version                   = "1.0.0"
  aws_account_number        = var.aws_account_number
  aws_region                = var.aws_region
  cust_abbrev               = var.cust_abbrev
  env_abbrev                = var.env_abbrev
  soln_abbrev               = var.soln_abbrev
  vpc_id                    = var.vpc_id
  instance_type             = var.instance_type
}