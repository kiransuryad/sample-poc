variable "function_name" {
  description = "The name of the Lambda function"
  default     = "HelloWorld"
}

variable "filename" {
  description = "The path to the deployment package"
  default     = "HelloWorld.zip"
}

variable "handler" {
  description = "The entry point for the Lambda function"
  default     = "HelloWorld::HelloWorld.Function::FunctionHandler"
}

variable "runtime" {
  description = "The runtime for the Lambda function"
  default     = "dotnetcore3.1"
}

variable "environment_variables" {
  description = "A map of environment variables for the Lambda function"
  type        = map(string)
  default     = {}
}
