# Region
variable AWS_REGION {
   default = "us-east-1"
}
# create users
variable users {
   default = ["db001","db002","db003","db004","db005"]
}
# create groups
variable group {
   default = "database-adminstrator"
}
