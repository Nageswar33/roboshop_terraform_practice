module "vpc" {
  source = "./tf-roboshop-practice"

  for_each = var.vpc
  cidr     = var.cidr
  subnets  = each.value["subnets"]

}