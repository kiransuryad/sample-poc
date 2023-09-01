variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

// VPC Variables
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_blocks" {
  description = "List of CIDR blocks for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

// S3 Variables
variable "bucket_name" {
  description = "The name of the bucket"
  default     = "poc-talbot-s3-bucket-9876755"
}

variable "acl" {
  description = "The canned ACL to apply"
  default     = "private"
}

variable "object_key" {
  description = "The key of the object"
  default     = "example.txt"
}

variable "object_source" {
  description = "The path to the source of the object"
  default     = "example.txt"
}

// DynamoDB Variables
variable "table_name" {
  description = "The name of the table"
  default     = "my-dynamodb-table"
}

variable "billing_mode" {
  description = "Controls how you are charged for read and write throughput"
  default     = "PROVISIONED"
}

variable "hash_key" {
  description = "The attribute to use as the hash (partition) key"
  default     = "Id"
}

variable "hash_key_type" {
  description = "The attribute type of the hash (partition) key"
  default     = "S"
}

variable "range_key" {
  description = "The attribute to use as the range (sort) key"
  default     = "Timestamp"
}

variable "range_key_type" {
  description = "The attribute type of the range (sort) key"
  default     = "S"
}

variable "read_capacity" {
  description = "The number of read capacity units"
  default     = 1
}

variable "write_capacity" {
  description = "The number of write capacity units"
  default     = 1
}

// RDS Variables
variable "allocated_storage" {
  description = "The allocated storage in gibibytes"
  default     = 20
}

variable "storage_type" {
  description = "One of standard (magnetic), gp2 (general purpose SSD), or io1 (provisioned IOPS SSD)"
  default     = "gp2"
}

variable "engine" {
  description = "The name of the database engine to be used for this DB instance"
  default     = "postgres"
}

variable "engine_version" {
  description = "The version number of the database engine to use"
  default     = "12.16"
}

variable "instance_class" {
  description = "The compute and memory capacity of an Amazon RDS instance"
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "The name of the database to create when the DB instance is launched"
  default     = "mydb"
}

variable "db_username" {
  description = "Username for the master DB user"
  default     = "adminpoc"
}

variable "db_password" {
  description = "Password for the master DB user"
  default     = "password"
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ"
  default     = false
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks to be allowed to connect to the DB instance"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

// Lambda Variables
variable "function_name" {
  description = "The name of the Lambda function"
  default     = "sample-dotnet-app"
}

variable "filename" {
  description = "The path to the deployment package"
  default     = "sample-dotnet-app.zip"
}

variable "handler" {
  description = "The entry point for the Lambda function"
  default     = "sample-dotnet-app::sample_dotnet_app.Function::FunctionHandler"
}

variable "runtime" {
  description = "The runtime for the Lambda function"
  default     = "dotnet6"
}

variable "environment_variables" {
  description = "A map of environment variables for the Lambda function"
  type        = map(string)
  default     = {}
}
