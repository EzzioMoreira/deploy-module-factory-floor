provider "aws" {
  region  = "us-east-2"
  version = "~> 3.0"
}

terraform {
  backend "s3" {
    bucket = "your-bucket-here"
    key    = "path/keyname-terraform-.tfstate"
    region = "us-east-2"
  }
}

module "dev_cluster" {
  source         = "git@github.com:EzzioMoreira/module-factory-floor.git?ref=v1.1"
  environment    = "you-environment-here"
  vpc_cidr_block = "10.2.0.0/16"
}

output "ecs_cluster_name" {
  value = module.dev_cluster.ecs_cluster_name
}

output "vpc_id" {
  value = module.dev_cluster.vpc_id
}

output "subnet_private" {
  value = module.dev_cluster.subnet_private
}