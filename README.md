# This Terraform calls the Terraform Module to deploy:
- [Module Children Factory Floor](https://github.com/EzzioMoreira/module-factory-floor.git)

## What will be created.
* Create a VPC
* Create 2 private subnets
* Create 2 public subnets
* Create a internet gateway
* Route tables
* Cluster ECS

### Requisites for running this project:
- Docker
- Make

### How do you use
#### Credential for AWS
Create `.env` file to AWS credentials with access key and secret key.
```shell
# AWS environment
AWS_ACCESS_KEY_ID=your-access-key-here
AWS_SECRET_ACCESS_KEY=your-secret-key-here
```

### Run the following commands to deploy:
```make
make help:          ## Run make help.
terraform-init:     ## Run terraform init to download all necessary plugins
terraform-plan:     ## Exec a terraform plan and puts it on a file called plano
terraform-apply:    ## Uses plano to apply the changes on AWS.
terraform-destroy:  ## Destroy all resources created by the terraform file in this repo.
```