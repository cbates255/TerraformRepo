resource "aws_instance" "testinstance" {
  ami = "aminame"
  instance_type = "t2.micro"
  key_name = "latestpair"
  associate_public_ip_address = true
  provisioner "remote-exec" {
    inline = [
      "sudo yum -y install httpd && sudo systemctl start httpd"
    ]
    connection {
      type = "ssh"
      user = "ec2-user"
      private_key = file("")
      host = self.public_ip
    }
  }
}