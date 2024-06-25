# Region
variable AWS_REGION {
  default     = "us-east-1"
}

# Create users
variable users {
  default = ["db001", "db002", "db003", "db004", "db005"]
}

# Create groups 
variable group {
  default = "database-adminstrator"
}

