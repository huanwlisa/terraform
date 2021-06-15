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
variable "location" {
  default = [
"cn-qingdao",
"cn-beijing",
"cn-zhangjiakou",
"cn-huhehaote",
"cn-wulanchabu",
"cn-hangzhou",
"cn-shanghai",
"cn-shenzhen",
"cn-heyuan",
"cn-guangzhou",
"cn-chengdu",
"cn-hongkong",
  ]
}
variable "vnet_address" {
  default = [
"10.0.0.0/16",
"10.1.0.0/16",
"10.2.0.0/16",
"10.3.0.0/16",
"10.4.0.0/16",
"10.5.0.0/16",
"10.6.0.0/16",
"10.7.0.0/16",
"10.8.0.0/16",
"10.9.0.0/16",
"10.10.0.0/16",
"10.11.0.0/16",
  ]
}
data "alicloud_zones" "zones_ds_qingdao" {
 provider = alicloud.qingdao
 # available_instance_type = "ecs.n4.large"
 # available_disk_category = "cloud_ssd"
}
data "alicloud_zones" "zones_ds_beijing" {
 provider = alicloud.beijing
 # available_instance_type = "ecs.n4.large"
 # available_disk_category = "cloud_ssd"
}
data "alicloud_zones" "zones_ds_zhangjiakou" {
 provider = alicloud.zhangjiakou
}
data "alicloud_zones" "zones_ds_huhehaote" {
 provider = alicloud.huhehaote
}
data "alicloud_zones" "zones_ds_wulanchabu" {
 provider = alicloud.wulanchabu
}
data "alicloud_zones" "zones_ds_hangzhou" {
 provider = alicloud.hangzhou
}
data "alicloud_zones" "zones_ds_shanghai" {
 provider = alicloud.shanghai
}
data "alicloud_zones" "zones_ds_shenzhen" {
 provider = alicloud.shenzhen
}
data "alicloud_zones" "zones_ds_heyuan" {
 provider = alicloud.heyuan
}
data "alicloud_zones" "zones_ds_guangzhou" {
 provider = alicloud.guangzhou
}
data "alicloud_zones" "zones_ds_chengdu" {
 provider = alicloud.chengdu
}
data "alicloud_zones" "zones_ds_hongkong" {
 provider = alicloud.hongkong
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
  zone_id = "${data.alicloud_zones.zones_ds_qingdao.zones.0.id}"
}
resource "alicloud_vswitch" "alivsw-beijing" {
   provider = alicloud.beijing
  vpc_id            = alicloud_vpc.alivpc-beijing.id
  cidr_block        = "10.1.0.0/24"
  zone_id = "${data.alicloud_zones.zones_ds_beijing.zones.0.id}"
}
resource "alicloud_vswitch" "alivsw-zhangjiakou" {
  provider = alicloud.zhangjiakou
  vpc_id            = alicloud_vpc.alivpc-zhangjiakou.id
  cidr_block        = "10.2.0.0/24"
  zone_id = "${data.alicloud_zones.zones_ds_zhangjiakou.zones.0.id}"
}
resource "alicloud_vswitch" "alivsw-huhehaote" {
  provider = alicloud.huhehaote
  vpc_id            = alicloud_vpc.alivpc-huhehaote.id
  cidr_block        = "10.3.0.0/24"
  zone_id = "${data.alicloud_zones.zones_ds_huhehaote.zones.0.id}"
}
resource "alicloud_vswitch" "alivsw-wulanchabu" {
  provider = alicloud.wulanchabu
  vpc_id            = alicloud_vpc.alivpc-wulanchabu.id
  cidr_block        = "10.4.0.0/24"
  zone_id = "${data.alicloud_zones.zones_ds_wulanchabu.zones.0.id}"
}
resource "alicloud_vswitch" "alivsw-hangzhou" {
  provider = alicloud.hangzhou
  vpc_id            = alicloud_vpc.alivpc-hangzhou.id
  cidr_block        = "10.5.0.0/24"
  zone_id = "${data.alicloud_zones.zones_ds_hangzhou.zones.0.id}"
}
resource "alicloud_vswitch" "alivsw-shanghai" {
  provider = alicloud.shanghai
  vpc_id            = alicloud_vpc.alivpc-shanghai.id
  cidr_block        = "10.6.0.0/24"
 zone_id = "${data.alicloud_zones.zones_ds_shanghai.zones.0.id}"
}
resource "alicloud_vswitch" "alivsw-shenzhen" {
  provider = alicloud.shenzhen
  vpc_id            = alicloud_vpc.alivpc-shenzhen.id
  cidr_block        = "10.7.0.0/24"
  zone_id = "${data.alicloud_zones.zones_ds_shenzhen.zones.0.id}"
}
resource "alicloud_vswitch" "alivsw-heyuan" {
  provider = alicloud.heyuan
  vpc_id            = alicloud_vpc.alivpc-heyuan.id
  cidr_block        = "10.8.0.0/24"
  zone_id = "${data.alicloud_zones.zones_ds_heyuan.zones.0.id}"
}
resource "alicloud_vswitch" "alivsw-guangzhou" {
  provider = alicloud.guangzhou
  vpc_id            = alicloud_vpc.alivpc-guangzhou.id
  cidr_block        = "10.9.0.0/24"
  zone_id = "${data.alicloud_zones.zones_ds_guangzhou.zones.0.id}"
}
resource "alicloud_vswitch" "alivsw-chengdu" {
  provider = alicloud.chengdu
  vpc_id            = alicloud_vpc.alivpc-chengdu.id
  cidr_block        = "10.10.0.0/24"
  zone_id = "${data.alicloud_zones.zones_ds_chengdu.zones.0.id}"
}
resource "alicloud_vswitch" "alivsw-hongkong" {
  provider = alicloud.hongkong
  vpc_id            = alicloud_vpc.alivpc-hongkong.id
  cidr_block        = "10.11.0.0/24"
  zone_id = "${data.alicloud_zones.zones_ds_hongkong.zones.0.id}"
}

############Key pair##########
resource "alicloud_ecs_key_pair" "publickey-qingdao" {
  provider = alicloud.qingdao
  key_pair_name   = "my_public_key-qingdao"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOTPlCoh2g9l/XorzfbE6w90Vr4w8mX51JnXemQ74GJHfdjTQJ2yWQv/wDt4/wEI3A7Al/66vnNuR5skn8WkTvQFor+JYsxwJs/yDXfpwHjECW86N7dBhFX5etPhqK8QdsvuyoXNhZyGRAJS/4Gl3QUWa8yESP5sQQe99A5XURXH6s5s43hJ0dYLihx+365nqEPq2W22ynQv0FHJwaBuFHsDu8FRhtSnLowBN5cQwUNLS4U4cB8FQVg1qXNbfYfxyv1tT/kSmsurQQHF3d0LSEtolbJLUlGJpQ+Ixr54fiBikDutWm3A4m0vvNE9eY5ITv08wRZwzpgzX0AWQ6FKEj+MUDaK1hlx7MwyG9HPnLtxVMxDiJPDuN5DxXtGN67rAOYqBayc2K5WR5rMcZVbp7zPjsKswXp7a/jLZrw5/hwKwv0mtV85xYFQA/zsoP5SCV6mlNEHT7SO+n24dh5s4+SJzlL30zAxBQt151B0BAEqtCkyQInebTD+YJLCzI57E= huanw@outlook.com"
}
resource "alicloud_ecs_key_pair" "publickey-beijing" {
  provider = alicloud.beijing
  key_pair_name   = "my_public_key-beijing"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOTPlCoh2g9l/XorzfbE6w90Vr4w8mX51JnXemQ74GJHfdjTQJ2yWQv/wDt4/wEI3A7Al/66vnNuR5skn8WkTvQFor+JYsxwJs/yDXfpwHjECW86N7dBhFX5etPhqK8QdsvuyoXNhZyGRAJS/4Gl3QUWa8yESP5sQQe99A5XURXH6s5s43hJ0dYLihx+365nqEPq2W22ynQv0FHJwaBuFHsDu8FRhtSnLowBN5cQwUNLS4U4cB8FQVg1qXNbfYfxyv1tT/kSmsurQQHF3d0LSEtolbJLUlGJpQ+Ixr54fiBikDutWm3A4m0vvNE9eY5ITv08wRZwzpgzX0AWQ6FKEj+MUDaK1hlx7MwyG9HPnLtxVMxDiJPDuN5DxXtGN67rAOYqBayc2K5WR5rMcZVbp7zPjsKswXp7a/jLZrw5/hwKwv0mtV85xYFQA/zsoP5SCV6mlNEHT7SO+n24dh5s4+SJzlL30zAxBQt151B0BAEqtCkyQInebTD+YJLCzI57E= huanw@outlook.com"
}
resource "alicloud_ecs_key_pair" "publickey-zhangjiakou" {
  provider = alicloud.zhangjiakou
  key_pair_name   = "my_public_key-zhangjiakou"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOTPlCoh2g9l/XorzfbE6w90Vr4w8mX51JnXemQ74GJHfdjTQJ2yWQv/wDt4/wEI3A7Al/66vnNuR5skn8WkTvQFor+JYsxwJs/yDXfpwHjECW86N7dBhFX5etPhqK8QdsvuyoXNhZyGRAJS/4Gl3QUWa8yESP5sQQe99A5XURXH6s5s43hJ0dYLihx+365nqEPq2W22ynQv0FHJwaBuFHsDu8FRhtSnLowBN5cQwUNLS4U4cB8FQVg1qXNbfYfxyv1tT/kSmsurQQHF3d0LSEtolbJLUlGJpQ+Ixr54fiBikDutWm3A4m0vvNE9eY5ITv08wRZwzpgzX0AWQ6FKEj+MUDaK1hlx7MwyG9HPnLtxVMxDiJPDuN5DxXtGN67rAOYqBayc2K5WR5rMcZVbp7zPjsKswXp7a/jLZrw5/hwKwv0mtV85xYFQA/zsoP5SCV6mlNEHT7SO+n24dh5s4+SJzlL30zAxBQt151B0BAEqtCkyQInebTD+YJLCzI57E= huanw@outlook.com"
}
resource "alicloud_ecs_key_pair" "publickey-huhehaote" {
  provider = alicloud.huhehaote
  key_pair_name   = "my_public_key-huhehaote"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOTPlCoh2g9l/XorzfbE6w90Vr4w8mX51JnXemQ74GJHfdjTQJ2yWQv/wDt4/wEI3A7Al/66vnNuR5skn8WkTvQFor+JYsxwJs/yDXfpwHjECW86N7dBhFX5etPhqK8QdsvuyoXNhZyGRAJS/4Gl3QUWa8yESP5sQQe99A5XURXH6s5s43hJ0dYLihx+365nqEPq2W22ynQv0FHJwaBuFHsDu8FRhtSnLowBN5cQwUNLS4U4cB8FQVg1qXNbfYfxyv1tT/kSmsurQQHF3d0LSEtolbJLUlGJpQ+Ixr54fiBikDutWm3A4m0vvNE9eY5ITv08wRZwzpgzX0AWQ6FKEj+MUDaK1hlx7MwyG9HPnLtxVMxDiJPDuN5DxXtGN67rAOYqBayc2K5WR5rMcZVbp7zPjsKswXp7a/jLZrw5/hwKwv0mtV85xYFQA/zsoP5SCV6mlNEHT7SO+n24dh5s4+SJzlL30zAxBQt151B0BAEqtCkyQInebTD+YJLCzI57E= huanw@outlook.com"
}
resource "alicloud_ecs_key_pair" "publickey-wulanchabu" {
  provider = alicloud.wulanchabu
  key_pair_name   = "my_public_key-wulanchabu"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOTPlCoh2g9l/XorzfbE6w90Vr4w8mX51JnXemQ74GJHfdjTQJ2yWQv/wDt4/wEI3A7Al/66vnNuR5skn8WkTvQFor+JYsxwJs/yDXfpwHjECW86N7dBhFX5etPhqK8QdsvuyoXNhZyGRAJS/4Gl3QUWa8yESP5sQQe99A5XURXH6s5s43hJ0dYLihx+365nqEPq2W22ynQv0FHJwaBuFHsDu8FRhtSnLowBN5cQwUNLS4U4cB8FQVg1qXNbfYfxyv1tT/kSmsurQQHF3d0LSEtolbJLUlGJpQ+Ixr54fiBikDutWm3A4m0vvNE9eY5ITv08wRZwzpgzX0AWQ6FKEj+MUDaK1hlx7MwyG9HPnLtxVMxDiJPDuN5DxXtGN67rAOYqBayc2K5WR5rMcZVbp7zPjsKswXp7a/jLZrw5/hwKwv0mtV85xYFQA/zsoP5SCV6mlNEHT7SO+n24dh5s4+SJzlL30zAxBQt151B0BAEqtCkyQInebTD+YJLCzI57E= huanw@outlook.com"
}
resource "alicloud_ecs_key_pair" "publickey-hangzhou" {
  provider = alicloud.hangzhou
  key_pair_name   = "my_public_key-hangzhou"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOTPlCoh2g9l/XorzfbE6w90Vr4w8mX51JnXemQ74GJHfdjTQJ2yWQv/wDt4/wEI3A7Al/66vnNuR5skn8WkTvQFor+JYsxwJs/yDXfpwHjECW86N7dBhFX5etPhqK8QdsvuyoXNhZyGRAJS/4Gl3QUWa8yESP5sQQe99A5XURXH6s5s43hJ0dYLihx+365nqEPq2W22ynQv0FHJwaBuFHsDu8FRhtSnLowBN5cQwUNLS4U4cB8FQVg1qXNbfYfxyv1tT/kSmsurQQHF3d0LSEtolbJLUlGJpQ+Ixr54fiBikDutWm3A4m0vvNE9eY5ITv08wRZwzpgzX0AWQ6FKEj+MUDaK1hlx7MwyG9HPnLtxVMxDiJPDuN5DxXtGN67rAOYqBayc2K5WR5rMcZVbp7zPjsKswXp7a/jLZrw5/hwKwv0mtV85xYFQA/zsoP5SCV6mlNEHT7SO+n24dh5s4+SJzlL30zAxBQt151B0BAEqtCkyQInebTD+YJLCzI57E= huanw@outlook.com"
}
resource "alicloud_ecs_key_pair" "publickey-shanghai" {
  provider = alicloud.shanghai
  key_pair_name   = "my_public_key-shanghai"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOTPlCoh2g9l/XorzfbE6w90Vr4w8mX51JnXemQ74GJHfdjTQJ2yWQv/wDt4/wEI3A7Al/66vnNuR5skn8WkTvQFor+JYsxwJs/yDXfpwHjECW86N7dBhFX5etPhqK8QdsvuyoXNhZyGRAJS/4Gl3QUWa8yESP5sQQe99A5XURXH6s5s43hJ0dYLihx+365nqEPq2W22ynQv0FHJwaBuFHsDu8FRhtSnLowBN5cQwUNLS4U4cB8FQVg1qXNbfYfxyv1tT/kSmsurQQHF3d0LSEtolbJLUlGJpQ+Ixr54fiBikDutWm3A4m0vvNE9eY5ITv08wRZwzpgzX0AWQ6FKEj+MUDaK1hlx7MwyG9HPnLtxVMxDiJPDuN5DxXtGN67rAOYqBayc2K5WR5rMcZVbp7zPjsKswXp7a/jLZrw5/hwKwv0mtV85xYFQA/zsoP5SCV6mlNEHT7SO+n24dh5s4+SJzlL30zAxBQt151B0BAEqtCkyQInebTD+YJLCzI57E= huanw@outlook.com"
}
resource "alicloud_ecs_key_pair" "publickey-shenzhen" {
  provider = alicloud.shenzhen
  key_pair_name   = "my_public_key-shenzhen"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOTPlCoh2g9l/XorzfbE6w90Vr4w8mX51JnXemQ74GJHfdjTQJ2yWQv/wDt4/wEI3A7Al/66vnNuR5skn8WkTvQFor+JYsxwJs/yDXfpwHjECW86N7dBhFX5etPhqK8QdsvuyoXNhZyGRAJS/4Gl3QUWa8yESP5sQQe99A5XURXH6s5s43hJ0dYLihx+365nqEPq2W22ynQv0FHJwaBuFHsDu8FRhtSnLowBN5cQwUNLS4U4cB8FQVg1qXNbfYfxyv1tT/kSmsurQQHF3d0LSEtolbJLUlGJpQ+Ixr54fiBikDutWm3A4m0vvNE9eY5ITv08wRZwzpgzX0AWQ6FKEj+MUDaK1hlx7MwyG9HPnLtxVMxDiJPDuN5DxXtGN67rAOYqBayc2K5WR5rMcZVbp7zPjsKswXp7a/jLZrw5/hwKwv0mtV85xYFQA/zsoP5SCV6mlNEHT7SO+n24dh5s4+SJzlL30zAxBQt151B0BAEqtCkyQInebTD+YJLCzI57E= huanw@outlook.com"
}
resource "alicloud_ecs_key_pair" "publickey-heyuan" {
  provider = alicloud.heyuan
  key_pair_name   = "my_public_key-heyuan"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOTPlCoh2g9l/XorzfbE6w90Vr4w8mX51JnXemQ74GJHfdjTQJ2yWQv/wDt4/wEI3A7Al/66vnNuR5skn8WkTvQFor+JYsxwJs/yDXfpwHjECW86N7dBhFX5etPhqK8QdsvuyoXNhZyGRAJS/4Gl3QUWa8yESP5sQQe99A5XURXH6s5s43hJ0dYLihx+365nqEPq2W22ynQv0FHJwaBuFHsDu8FRhtSnLowBN5cQwUNLS4U4cB8FQVg1qXNbfYfxyv1tT/kSmsurQQHF3d0LSEtolbJLUlGJpQ+Ixr54fiBikDutWm3A4m0vvNE9eY5ITv08wRZwzpgzX0AWQ6FKEj+MUDaK1hlx7MwyG9HPnLtxVMxDiJPDuN5DxXtGN67rAOYqBayc2K5WR5rMcZVbp7zPjsKswXp7a/jLZrw5/hwKwv0mtV85xYFQA/zsoP5SCV6mlNEHT7SO+n24dh5s4+SJzlL30zAxBQt151B0BAEqtCkyQInebTD+YJLCzI57E= huanw@outlook.com"
}
resource "alicloud_ecs_key_pair" "publickey-guangzhou" {
  provider = alicloud.guangzhou
  key_pair_name   = "my_public_key-guangzhou"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOTPlCoh2g9l/XorzfbE6w90Vr4w8mX51JnXemQ74GJHfdjTQJ2yWQv/wDt4/wEI3A7Al/66vnNuR5skn8WkTvQFor+JYsxwJs/yDXfpwHjECW86N7dBhFX5etPhqK8QdsvuyoXNhZyGRAJS/4Gl3QUWa8yESP5sQQe99A5XURXH6s5s43hJ0dYLihx+365nqEPq2W22ynQv0FHJwaBuFHsDu8FRhtSnLowBN5cQwUNLS4U4cB8FQVg1qXNbfYfxyv1tT/kSmsurQQHF3d0LSEtolbJLUlGJpQ+Ixr54fiBikDutWm3A4m0vvNE9eY5ITv08wRZwzpgzX0AWQ6FKEj+MUDaK1hlx7MwyG9HPnLtxVMxDiJPDuN5DxXtGN67rAOYqBayc2K5WR5rMcZVbp7zPjsKswXp7a/jLZrw5/hwKwv0mtV85xYFQA/zsoP5SCV6mlNEHT7SO+n24dh5s4+SJzlL30zAxBQt151B0BAEqtCkyQInebTD+YJLCzI57E= huanw@outlook.com"
}
resource "alicloud_ecs_key_pair" "publickey-chengdu" {
  provider = alicloud.chengdu
  key_pair_name   = "my_public_key-chengdu"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOTPlCoh2g9l/XorzfbE6w90Vr4w8mX51JnXemQ74GJHfdjTQJ2yWQv/wDt4/wEI3A7Al/66vnNuR5skn8WkTvQFor+JYsxwJs/yDXfpwHjECW86N7dBhFX5etPhqK8QdsvuyoXNhZyGRAJS/4Gl3QUWa8yESP5sQQe99A5XURXH6s5s43hJ0dYLihx+365nqEPq2W22ynQv0FHJwaBuFHsDu8FRhtSnLowBN5cQwUNLS4U4cB8FQVg1qXNbfYfxyv1tT/kSmsurQQHF3d0LSEtolbJLUlGJpQ+Ixr54fiBikDutWm3A4m0vvNE9eY5ITv08wRZwzpgzX0AWQ6FKEj+MUDaK1hlx7MwyG9HPnLtxVMxDiJPDuN5DxXtGN67rAOYqBayc2K5WR5rMcZVbp7zPjsKswXp7a/jLZrw5/hwKwv0mtV85xYFQA/zsoP5SCV6mlNEHT7SO+n24dh5s4+SJzlL30zAxBQt151B0BAEqtCkyQInebTD+YJLCzI57E= huanw@outlook.com"
}
resource "alicloud_ecs_key_pair" "publickey-hongkong" {
  provider = alicloud.hongkong
  key_pair_name   = "my_public_key-hongkong"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOTPlCoh2g9l/XorzfbE6w90Vr4w8mX51JnXemQ74GJHfdjTQJ2yWQv/wDt4/wEI3A7Al/66vnNuR5skn8WkTvQFor+JYsxwJs/yDXfpwHjECW86N7dBhFX5etPhqK8QdsvuyoXNhZyGRAJS/4Gl3QUWa8yESP5sQQe99A5XURXH6s5s43hJ0dYLihx+365nqEPq2W22ynQv0FHJwaBuFHsDu8FRhtSnLowBN5cQwUNLS4U4cB8FQVg1qXNbfYfxyv1tT/kSmsurQQHF3d0LSEtolbJLUlGJpQ+Ixr54fiBikDutWm3A4m0vvNE9eY5ITv08wRZwzpgzX0AWQ6FKEj+MUDaK1hlx7MwyG9HPnLtxVMxDiJPDuN5DxXtGN67rAOYqBayc2K5WR5rMcZVbp7zPjsKswXp7a/jLZrw5/hwKwv0mtV85xYFQA/zsoP5SCV6mlNEHT7SO+n24dh5s4+SJzlL30zAxBQt151B0BAEqtCkyQInebTD+YJLCzI57E= huanw@outlook.com"
}


################CEN################
resource "alicloud_cen_instance" "alicen" {

#############CEN ATTACH################
}
resource "alicloud_cen_instance_attachment" "alicenattach-qingdao" {
  #provider = alicloud.qingdao
  instance_id = alicloud_cen_instance.alicen.id
  child_instance_id = alicloud_vpc.alivpc-qingdao.id
  child_instance_type = "VPC"
  child_instance_region_id = "cn-qingdao"
  
}
resource "alicloud_cen_instance_attachment" "alicenattach-beijing" {
  #provider = alicloud.qingdao
  instance_id = alicloud_cen_instance.alicen.id
  child_instance_id = alicloud_vpc.alivpc-beijing.id
  child_instance_type = "VPC"
  child_instance_region_id = "cn-beijing"
  
}
resource "alicloud_cen_instance_attachment" "alicenattach-zhangjiakou" {
  #provider = alicloud.qingdao
  instance_id = alicloud_cen_instance.alicen.id
  child_instance_id = alicloud_vpc.alivpc-zhangjiakou.id
  child_instance_type = "VPC"
  child_instance_region_id = "cn-zhangjiakou"
  
}
resource "alicloud_cen_instance_attachment" "alicenattach-huhehaote" {
  #provider = alicloud.qingdao
  instance_id = alicloud_cen_instance.alicen.id
  child_instance_id = alicloud_vpc.alivpc-huhehaote.id
  child_instance_type = "VPC"
  child_instance_region_id = "cn-huhehaote"
  
}
resource "alicloud_cen_instance_attachment" "alicenattach-wulanchabu" {
  #provider = alicloud.qingdao
  instance_id = alicloud_cen_instance.alicen.id
  child_instance_id = alicloud_vpc.alivpc-wulanchabu.id
  child_instance_type = "VPC"
  child_instance_region_id = "cn-wulanchabu"
  
}
resource "alicloud_cen_instance_attachment" "alicenattach-hangzhou" {
  #provider = alicloud.qingdao
  instance_id = alicloud_cen_instance.alicen.id
  child_instance_id = alicloud_vpc.alivpc-hangzhou.id
  child_instance_type = "VPC"
  child_instance_region_id = "cn-hangzhou"
  
}
resource "alicloud_cen_instance_attachment" "alicenattach-shanghai" {
  #provider = alicloud.qingdao
  instance_id = alicloud_cen_instance.alicen.id
  child_instance_id = alicloud_vpc.alivpc-shanghai.id
  child_instance_type = "VPC"
  child_instance_region_id = "cn-shanghai"
  
}
resource "alicloud_cen_instance_attachment" "alicenattach-shenzhen" {
  #provider = alicloud.qingdao
  instance_id = alicloud_cen_instance.alicen.id
  child_instance_id = alicloud_vpc.alivpc-shenzhen.id
  child_instance_type = "VPC"
  child_instance_region_id = "cn-shenzhen"
  
}
resource "alicloud_cen_instance_attachment" "alicenattach-heyuan" {
  #provider = alicloud.qingdao
  instance_id = alicloud_cen_instance.alicen.id
  child_instance_id = alicloud_vpc.alivpc-heyuan.id
  child_instance_type = "VPC"
  child_instance_region_id = "cn-heyuan"
  
}
resource "alicloud_cen_instance_attachment" "alicenattach-guangzhou" {
  #provider = alicloud.qingdao
  instance_id = alicloud_cen_instance.alicen.id
  child_instance_id = alicloud_vpc.alivpc-guangzhou.id
  child_instance_type = "VPC"
  child_instance_region_id = "cn-guangzhou"
  
}
resource "alicloud_cen_instance_attachment" "alicenattach-chengdu" {
  #provider = alicloud.qingdao
  instance_id = alicloud_cen_instance.alicen.id
  child_instance_id = alicloud_vpc.alivpc-chengdu.id
  child_instance_type = "VPC"
  child_instance_region_id = "cn-chengdu"
  
}
resource "alicloud_cen_instance_attachment" "alicenattach-hongkong" {
  #provider = alicloud.qingdao
  instance_id = alicloud_cen_instance.alicen.id
  child_instance_id = alicloud_vpc.alivpc-hongkong.id
  child_instance_type = "VPC"
  child_instance_region_id = "cn-hongkong"
  
}

##################security group rule############
resource "alicloud_security_group" "SG-qingdao" {
  provider = alicloud.qingdao
  #name = "SG-qingdao"
  vpc_id = alicloud_vpc.alivpc-qingdao.id
}
resource "alicloud_security_group_rule" "ssh-qingdao" {
  provider = alicloud.qingdao
  type              = "ingress"
  ip_protocol       = "tcp"
 # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.SG-qingdao.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "icmp-qingdao" {
   provider = alicloud.qingdao
  type              = "ingress"
  ip_protocol       = "icmp"
#  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 11
  security_group_id = alicloud_security_group.SG-qingdao.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "out-qingdao" {
   provider = alicloud.qingdao
  type              = "egress"
  ip_protocol       = "tcp"
 # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 2
  security_group_id = alicloud_security_group.SG-qingdao.id
  cidr_ip           = "0.0.0.0/0"
}
#resource "alicloud_instance" "name" {

  
#}