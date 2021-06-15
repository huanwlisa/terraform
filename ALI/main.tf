#module "oss-backend" {
#  source                   = "terraform-alicloud-modules/remote-backend/alicloud"
#  create_backend_bucket    = true
#  create_Tablestore_lock_instance = true
#  create_Tablestore_lock_table    = true
#  region                   = "cn-beijing"
#  state_name               = "terraform/terraform.tfstate"
#  encrypt_state            = true
#}
terraform {
  backend "oss" {
    bucket = "potevio"
    prefix   = "terraform"
    key   = "terraform.tfstate"
    region = "cn-beijing"
    tablestore_endpoint = "https://terraform-remote.cn-beijing.ots.aliyuncs.com"
   # tablestore_table = "statelock"

  }
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
    }
  }
}
provider "alicloud" {
    
}
resource "alicloud_vpc" "alivpc" {
  #name       = "alivpc"
  cidr_block = "10.0.0.0/16"
}

resource "alicloud_vswitch" "alivsw" {
  vpc_id            = alicloud_vpc.alivpc.id
  cidr_block        = "10.0.0.0/24"
  zone_id = "cn-beijing-b"
}