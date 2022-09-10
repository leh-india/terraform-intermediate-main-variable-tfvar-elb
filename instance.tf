resource "aws_instance" "t-instance" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.subnet_public.id
  associate_public_ip_address = false
  vpc_security_group_ids = ["${aws_security_group.ssh-sg.id}"]
  key_name = var.key_name
  user_data = "${file(var.user_data)}"
 
  tags = {
    Name = var.instance_name
    Environment  = var.environment_tag
  }
}

resource "aws_eip" "eip" {
  instance = aws_instance.t-instance.id
  vpc      = true
  tags={
    Name="terraform-eip"
  }
}
