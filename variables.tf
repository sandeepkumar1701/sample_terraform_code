variable "instance_count" {
  description = "Number of instances to create"
  type        = number
}

variable "ami" {
  description = "AMI to be used for instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}
