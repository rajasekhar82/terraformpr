resource "aws_instance"  "server" {

    ami             = "ami-03cb1380eec7cc118"
    count           = 2
    instance_type   = "t2.micro"
    subnet_id       = "subnet-0687efb8144544b4b"
    security_groups = ["sg-0e38b7f7247dec1bc"]
    key_name        = "aws7.pem"

    tags = {
      Name = "terraform-server"
    }

}
