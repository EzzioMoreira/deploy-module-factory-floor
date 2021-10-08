provider "aws" {
  region  = "us-east-2"
  version = "= 3.0"
}

terraform {
  backend "s3" {
    bucket = "metal.corp-devops-test"
    key    = "infra/factoryfloor-terraform-.tfstate"
    region = "us-east-2"
  }
}

module "dev_cluster" {
  source         = "git@github.com:EzzioMoreira/module-factory-floor.git?ref=main"
  environment    = "development"
  vpc_cidr_block = "10.1.0.0/16"
}