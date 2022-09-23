
provider "aws" {
  region  = "us-east-1"
}

module "securitygroup" {
  source = "./sg"

}


module "ec2-app-server" {
  source = "./ec2"
  sg_id  = module.securitygroup.sg-id

}


module "ec2-web-server" {
  source = "./ec2"
  sg_id  = module.securitygroup.sg-id

}



