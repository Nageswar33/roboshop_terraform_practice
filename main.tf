module "vpc" {
  source = "./tf-roboshop-practice"

  for_each = var.vpc
  cidr     = each.value["cidr"]
  subnets  = each.value["subnets"]

}