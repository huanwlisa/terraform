provider "alicloud" {
    
}
resource "alicloud_vpc" "alivpc" {
  #name       = "alivpc"
  cidr_block = "10.0.0.0/16"
}

resource "alicloud_vswitch" "alivsw" {
  vpc_id            = alicloud_vpc.alivpc.id
  cidr_block        = "10.0.0.0/24"
 # availability_zone = "cn-beijing-b"
}