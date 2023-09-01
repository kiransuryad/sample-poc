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
  default     = "12.4"
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
  default     = "admin"
}

variable "db_password" {
  description = "Password for the master DB user"
  default     = "password"
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ"
  default     = false
}

variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs"
  type        = list(string)
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks to be allowed to connect to the DB instance"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
