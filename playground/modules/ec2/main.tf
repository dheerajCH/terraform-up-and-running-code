data "aws_vpc" "test-cloud" {
  tags = {
    Name = "test-cloud"
  }
}
data "aws_subnet" "subnet" {
  vpc_id = data.aws_vpc.test-cloud.id
  availability_zone = "eu-west-1a"
}

data "aws_ami" "debian" {
  most_recent = true

  owners = [
    "379101102735" // Debian Stretch on Amazon EC2, https://wiki.debian.org/Cloud/AmazonEC2Image/Stretch
  ]

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_instance" "example" {
  ami = data.aws_ami.debian.id
  instance_type = local.instance_type
  subnet_id = data.aws_subnet.subnet.id

  user_data = file("${path.module}/user-data.sh")

  tags  =  {
    Name = var.ec2_name
  }
}
