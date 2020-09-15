provider "aws" {
  region = "eu-west-1"
}

module "ec2" {
  source = "./../modules/ec2"

  ec2_name = var.ec2_name
}
