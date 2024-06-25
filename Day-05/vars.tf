# Region
variable AWS_REGION {
  default = "us-east-1" 
}
# Image 
variable instance_data {
  default = {
    ami = "ami-04b70fa74e45c3917"
    type = "t2.micro"
    name = "ebs_server"
    drive = "/dev/sde"
 } 
}
