provider "aws" {
  region  = "us-east-2"
  version = "= 3.0"
}

terraform {
  backend "s3" {
    bucket = "metal.corp-devops-test"
    key    = "factoryfloor-terraform-.tfstate"
    region = "us-east-2"
  }
}

module "dev_cluster" {
  source        = "git@github.com:EzzioMoreira/module-factory-floor.git?ref=v1.0"
  environment   = "development"
  default_tags  = {
    Name        : "App-Web01",
    Team        : "IAC",
    Application : "Rapadura",
    Environment : "development",
    Terraform   : "Yes",
    Owner       : "Metal.Corp"
  }
}