default_vpc_id             = "vpc-0e8376737193c7c92"
default_vpc_cidr           = "172.31.0.0/16"


az = ["us-east-1a", "us-east-1b"]

vpc = {
  main = {
    cidr                       = "10.0.0.0/16"
    subnets = {
      public = {
        public1 = { cidr = "10.0.0.0/24", az = "us-east-1a" }
        public2 = { cidr = "10.0.0.1/24", az = "us-east-1b" }
      }

      app = {
        app1 = { cidr = "10.0.0.2/24", az = "us-east-1a" }
        app2 = { cidr = "10.0.0.3/24", az = "us-east-1b" }
      }

      db = {
        db1 = { cidr = "10.0.0.4/24", az = "us-east-1a" }
        db2 = { cidr = "10.0.0.5/24", az = "us-east-1b" }
      }
    }
  }
}
