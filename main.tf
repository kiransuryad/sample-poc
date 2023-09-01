provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source             = "./modules/vpc"
  cidr_block         = var.vpc_cidr_block
  subnet_cidr_blocks = var.subnet_cidr_blocks
  availability_zones = var.availability_zones
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
  acl         = var.acl
}

module "dynamodb" {
  source         = "./modules/dynamodb"
  table_name     = var.table_name
  billing_mode   = var.billing_mode
  hash_key       = var.hash_key
  hash_key_type  = var.hash_key_type
  range_key      = var.range_key
  range_key_type = var.range_key_type
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
}

module "rds" {
  source              = "./modules/rds"
  allocated_storage   = var.allocated_storage
  storage_type        = var.storage_type
  engine              = var.engine
  engine_version      = var.engine_version
  instance_class      = var.instance_class
  db_name             = var.db_name
  db_username         = var.db_username
  db_password         = var.db_password
  multi_az            = var.multi_az
  vpc_id              = module.vpc.vpc_id
  subnet_ids          = module.vpc.subnet_ids
  allowed_cidr_blocks = var.allowed_cidr_blocks
}

module "lambda" {
  source                = "./modules/lambda"
  function_name         = var.function_name
  filename              = var.filename
  handler               = var.handler
  runtime               = var.runtime
  environment_variables = var.environment_variables
}
