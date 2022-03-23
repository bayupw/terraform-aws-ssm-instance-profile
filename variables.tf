# Boolean to determine if name will be appended with random strings
variable "random_suffix" {
  type        = bool
  default     = true
  description = "Add random suffix"
}

# Length of random strings to be appended to the name
variable "random_string_length" {
  type        = number
  default     = 3
  description = "Random string length"
}

# SSM IAM Role name
variable "ssm_instance_role_name" {
  type        = string
  default     = "ssm-role"
  description = "SSM role name"
}

# SSM IAM Instance Profile name
variable "ssm_instance_profile_name" {
  type        = string
  default     = "ssm-instance-profile"
  description = "SSM instance profile name"
}