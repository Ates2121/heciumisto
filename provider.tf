provider " aws " {
  region     = "us-east-1"
}
resource "aws_vpc" "main" {
  cidr_block = "190.160.0.0/16"
  instance_tenancy = "default"
  tags = {
      name = "main"
      location = "amed"
    
  }
}
resource "aws_subnet" "subnet1" {
    vpc_id = "${aws.main.id}"
    cidr_block = "190.160.1.0/24"

    tags = {
        name = "subnet1"
    }

}
