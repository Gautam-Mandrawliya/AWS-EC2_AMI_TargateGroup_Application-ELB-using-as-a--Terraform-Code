output "Image-ID" {
  value = module.web-app-ami.Image-ID
}

output "Web-App_AMI-ID" {
  value = module.web-app-ami.WebApp_AMI-ID
}

output "WebApp-Instance-SG-ID" {
  value = module.web-app-instance.SecurityGroup
}

output "WebApp-Instance-ID" {
  value = module.web-app-instance.Instance-ID
}

output "ALB-SG-ID" {
  value = module.web-app-alb.SecurityGroup
}

#output "WebApp-TG-ID" {
#  value = module.aws_lb_target_group.TargetGroup-ID
#}

output "WebApp-ALB-ID" {
  value = module.web-app-alb.ALB-ID
}

output "WebApp-DNS-Name" {
  value = module.web-app-alb.ALB-DNS-Name
}