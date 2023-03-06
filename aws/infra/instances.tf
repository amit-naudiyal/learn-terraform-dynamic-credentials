resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type

  user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<html><body><div>Hello, world!</div></body></html>" > /var/www/html/index.html
    EOF

  tags = merge(var.tags,  {
    Name            = "ec2-tag-testing-instance"
    a_Solution      = "TaggingSolution"
    a_Environment   = "uat01"
    Creator         = "amit.naudiyal"
  })
}