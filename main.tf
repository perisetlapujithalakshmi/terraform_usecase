provider "aws" {
 region = "ap-south-1"
}

resource "aws_instance" "ec2_tf" {
 ami = "ami-006d3995d3a6b963b"
 instance_type = "t2.micro"
 tags={
  Name = "MYEC2Instance"
}
}
resource "aws_s3_bucket" "s3_tf" {
 bucket = "pujitha-terraform-bucket"
 tags={
  Name = "MyS3Bucket"
}
}

output "ec2_public_ip"{
 value = aws_instance.ec2_tf.public_ip
}

output "s3_bucket_name" {
value = aws_s3_bucket.s3_tf.bucket
}
