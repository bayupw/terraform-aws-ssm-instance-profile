variable "random_suffix" {
  type        = bool
  default     = true
  description = "Add random suffix"
}

variable "random_string_length" {
  type        = number
  default     = 3
  description = "Random string length"
}

variable "ssm_instance_role_name" {
  type        = string
  default     = "ssm-instance-role"
  description = "SSM instance role name"
}

variable "ssm_instance_profile_name" {
  type        = string
  default     = "ssm-instance-profile"
  description = "SSM instance profile name"
}