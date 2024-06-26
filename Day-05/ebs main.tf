# create EBS volume
resource "aws_ebs_volume" "storage_volume" {
  availability_zone = "us-east-1a"
  size = 1
  tags = {
    Name = var.instance_data.name
 }
}
#Create new instance
resource "aws_instance" "web" {
  ami = var.instance_data.ami
  availability_zone = "us-east-1a"
  instance_type = var.instance_data.type
  tags = {
    Name = var.instance_data.name
 } 
}
# Attach newly created EBS volume to instance
resource "aws_volume_attachment" "ebs_att" {
  device_name = var.instance_data.drive
  volume_id = aws_ebs_volume.storage_volume.id
  instance_id = aws_instance.web.id
}
