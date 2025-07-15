resource "aws_instance" "web" {
  ami                         = data.aws_ami.amiID.id
  instance_type               = "t2.small"
  key_name                    = "your-key-name"
  vpc_security_group_ids      = [your-security-group]
  availability_zone           = "ap-south-1a"

  tags = {
    Name    = "Dove-web"
    project = "Dove"
  }
}
