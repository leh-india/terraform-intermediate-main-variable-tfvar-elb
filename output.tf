output "vpc" {
        value = aws_vpc.vpc.id
}

output "subnet" {
        value = aws_subnet.subnet_public.id
}

output "igw" {
        value = aws_internet_gateway.igw.id
}

output "rtb" {
        value = "${aws_vpc.vpc.default_route_table_id}"
}

output "eip" {
        value = aws_eip.eip.public_ip
}

output "private-ip" {
        value = aws_instance.t-instance.private_ip
}

output "security-group" {
        value = aws_security_group.ssh-sg.id
}

output "ec2-instance" {
        value = aws_instance.t-instance.id
}

output "elb-dns-name" {
  value = "${aws_elb.terra-elb.dns_name}"
}
