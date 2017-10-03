provider "aws" {
 	region = "us-west-1"
	profile = "default" 
	shared_credentials_file = "~/.aws/credentials"
}



terraform {

	required_version = "0.10.7"

}


resource "aws_instance" "test" {
  ami           = "ami-3a674d5a"
  instance_type = "t2.micro"
  tags {
	Name = "test_terraform-v1"
  }

}



resource "aws_instance" "test1" {
  ami           = "ami-3a674d5a"
  instance_type = "t2.micro"
  tags {
        Name = "test_terraform-v2"
  }

}

