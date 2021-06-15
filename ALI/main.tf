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
  alias = "qingdao"
  region = "cn-qingdao"
}

provider "alicloud" {
  alias = "beijing"
  region = "cn-beijing"
}
provider "alicloud" {
  alias = "zhangjiakou"
  region = "cn-zhangjiakou"
}
provider "alicloud" {
  alias = "huhehaote"
  region = "cn-huhehaote"
}
provider "alicloud" {
  alias = "wulanchabu"
  region = "cn-wulanchabu"
}
provider "alicloud" {
  alias = "hangzhou"
  region = "cn-hangzhou"
}
provider "alicloud" {
  alias = "shanghai"
  region = "cn-shanghai"
}
provider "alicloud" {
  alias = "shenzhen"
  region = "cn-shenzhen"
}
provider "alicloud" {
  alias = "heyuan"
  region = "cn-heyuan"
}
provider "alicloud" {
  alias = "guangzhou"
  region = "cn-guangzhou"
}
provider "alicloud" {
  alias = "chengdu"
  region = "cn-chengdu"
}
provider "alicloud" {
  alias = "hongkong"
  region = "cn-hongkong"
}

###############VPC################

resource "alicloud_vpc" "alivpc-qingdao" {
  provider = alicloud.qingdao
  cidr_block = "10.0.0.0/16"
 
}
resource "alicloud_vpc" "alivpc-beijing" {
   provider = alicloud.beijing
  cidr_block = "10.1.0.0/16"
  
 
}
resource "alicloud_vpc" "alivpc-zhangjiakou" {
   provider = alicloud.zhangjiakou
  cidr_block = "10.2.0.0/16"
  
 
}
resource "alicloud_vpc" "alivpc-huhehaote" {
   provider = alicloud.huhehaote
  cidr_block = "10.3.0.0/16"
  
 
}
resource "alicloud_vpc" "alivpc-wulanchabu" {
   provider = alicloud.wulanchabu
  cidr_block = "10.4.0.0/16"
  
 
}
resource "alicloud_vpc" "alivpc-hangzhou" {
   provider = alicloud.hangzhou
  cidr_block = "10.5.0.0/16"
  
 
}
resource "alicloud_vpc" "alivpc-shanghai" {
   provider = alicloud.shanghai
  cidr_block = "10.6.0.0/16"
  
 
}
resource "alicloud_vpc" "alivpc-shenzhen" {
   provider = alicloud.shenzhen
  cidr_block = "10.7.0.0/16"
  
 
}
resource "alicloud_vpc" "alivpc-heyuan" {
   provider = alicloud.heyuan
  cidr_block = "10.8.0.0/16"
  
 
}
resource "alicloud_vpc" "alivpc-guangzhou" {
   provider = alicloud.guangzhou
  cidr_block = "10.9.0.0/16"
  
 
}

resource "alicloud_vpc" "alivpc-chengdu" {
   provider = alicloud.chengdu
  cidr_block = "10.10.0.0/16"
  
 
}

resource "alicloud_vpc" "alivpc-hongkong" {
   provider = alicloud.hongkong
  cidr_block = "10.11.0.0/16"
  
 
}

#############VSWITCH############
resource "alicloud_vswitch" "alivsw-qingdao" {
  provider = alicloud.qingdao
  vpc_id            = alicloud_vpc.alivpc-qingdao.id
  cidr_block        = "10.0.0.0/24"
   zone_id = "cn-qingdao-a"
}
resource "alicloud_vswitch" "alivsw-beijing" {
   provider = alicloud.beijing
  vpc_id            = alicloud_vpc.alivpc-beijing.id
  cidr_block        = "10.1.0.0/24"
  zone_id = "cn-beijing-b"
}
resource "alicloud_vswitch" "alivsw-zhangjiakou" {
  vpc_id            = alicloud_vpc.alivpc-zhangjiakou.id
  cidr_block        = "10.2.0.0/24"
}
resource "alicloud_vswitch" "alivsw-huhehaote" {
  vpc_id            = alicloud_vpc.alivpc-huhehaote.id
  cidr_block        = "10.3.0.0/24"
}
resource "alicloud_vswitch" "alivsw-wulanchabu" {
  vpc_id            = alicloud_vpc.alivpc-wulanchabu.id
  cidr_block        = "10.4.0.0/24"
}
resource "alicloud_vswitch" "alivsw-hangzhou" {
  vpc_id            = alicloud_vpc.alivpc-hangzhou.id
  cidr_block        = "10.5.0.0/24"
}
resource "alicloud_vswitch" "alivsw-shanghai" {
  vpc_id            = alicloud_vpc.alivpc-shanghai.id
  cidr_block        = "10.6.0.0/24"
}
resource "alicloud_vswitch" "alivsw-shenzhen" {
  vpc_id            = alicloud_vpc.alivpc-shenzhen.id
  cidr_block        = "10.7.0.0/24"
}
resource "alicloud_vswitch" "alivsw-heyuan" {
  vpc_id            = alicloud_vpc.alivpc-heyuan.id
  cidr_block        = "10.8.0.0/24"
}
resource "alicloud_vswitch" "alivsw-guangzhou" {
  vpc_id            = alicloud_vpc.alivpc-guangzhou.id
  cidr_block        = "10.9.0.0/24"
}
resource "alicloud_vswitch" "alivsw-chengdu" {
  vpc_id            = alicloud_vpc.alivpc-chengdu.id
  cidr_block        = "10.10.0.0/24"
}
resource "alicloud_vswitch" "alivsw-hongkong" {
  vpc_id            = alicloud_vpc.alivpc-hongkong.id
  cidr_block        = "10.0.0.0/24"
}
