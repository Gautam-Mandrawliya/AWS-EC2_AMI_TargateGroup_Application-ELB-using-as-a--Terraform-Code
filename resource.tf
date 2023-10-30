provider "aws" {
  region = var.region
}

module "web-app-ami" {
  source            = "./modules/aws-ami"
  image_name        = var.image_name
  instance_type     = var.instance_type
  availability_zone = var.availability_zone
}

module "web-app-instance" {
  source            = "./modules/webserver"
  ami               = module.web-app-ami.WebApp_AMI-ID
  instance_type     = var.instance_type
  availability_zone = var.availability_zone
  ports             = var.ports
}

module "web-app-alb" {
  source            = "./modules/application-elb"
  availability_zone = var.availability_zone
  ports             = var.ports
  vpc_id            = var.vpc_id
  target_id         = module.web-app-instance.Instance-ID
}