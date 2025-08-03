module "vpc" {
  source = "/roboshop_terraform_practice/tf-roboshop-practice"

  for_each = var.vpc
  cidr     = each.value["cidr"]
  subnets  = each.value["subnets"]

}