region            = "ap-south-1"
availability_zone = "ap-south-1a"
image_name        = "amzn2-ami-kernel-5.10-hvm-*"
instance_type     = "t2.micro"
ports             = [22, 80, 443, 3306]
#key_name          = "terraform"
vpc_id = "vpc-0208c906409ccca22"
