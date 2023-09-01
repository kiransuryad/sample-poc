variable "bucket_name" {
  description = "The name of the bucket"
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
