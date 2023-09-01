variable "table_name" {
  description = "The name of the table"
}

variable "billing_mode" {
  description = "Controls how you are charged for read and write throughput"
  default     = "PROVISIONED"
}

variable "hash_key" {
  description = "The attribute to use as the hash (partition) key"
}

variable "hash_key_type" {
  description = "The attribute type of the hash (partition) key"
  default     = "S"
}

variable "range_key" {
  description = "The attribute to use as the range (sort) key"
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
