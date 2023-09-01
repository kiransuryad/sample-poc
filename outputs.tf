output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.vpc.subnet_ids
}

output "s3_bucket_name" {
  value = module.s3.s3_bucket_name
}

output "dynamodb_table_name" {
  value = module.dynamodb.dynamodb_table_name
}

output "rds_instance_endpoint" {
  value = module.rds.rds_instance_endpoint
}

output "lambda_function_name" {
  value = module.lambda.lambda_function_name
}
