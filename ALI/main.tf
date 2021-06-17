terraform {
  backend "oss" {
    bucket              = "potevio"
    prefix              = "terraform"
    key                 = "terraform.tfstate"
    region              = "cn-beijing"
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
  alias  = "qingdao"
  region = "cn-qingdao"
}

provider "alicloud" {
  alias  = "beijing"
  region = "cn-beijing"
}
provider "alicloud" {
  alias  = "zhangjiakou"
  region = "cn-zhangjiakou"
}
provider "alicloud" {
  alias  = "huhehaote"
  region = "cn-huhehaote"
}
provider "alicloud" {
  alias  = "wulanchabu"
  region = "cn-wulanchabu"
}
provider "alicloud" {
  alias  = "hangzhou"
  region = "cn-hangzhou"
}
provider "alicloud" {
  alias  = "shanghai"
  region = "cn-shanghai"
}
provider "alicloud" {
  alias  = "shenzhen"
  region = "cn-shenzhen"
}
provider "alicloud" {
  alias  = "heyuan"
  region = "cn-heyuan"
}
provider "alicloud" {
  alias  = "guangzhou"
  region = "cn-guangzhou"
}
provider "alicloud" {
  alias  = "chengdu"
  region = "cn-chengdu"
}
provider "alicloud" {
  alias  = "hongkong"
  region = "cn-hongkong"
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

data "alicloud_instance_types" "insttype-qingdao" {
  provider          = alicloud.qingdao
  memory_size       = 1
  cpu_core_count    = 1
  availability_zone = data.alicloud_zones.zones_ds_qingdao.zones.0.id
}
data "alicloud_instance_types" "insttype-beijing" {
  provider          = alicloud.beijing
  memory_size       = 1
  cpu_core_count    = 1
  availability_zone = data.alicloud_zones.zones_ds_beijing.zones.0.id
}
data "alicloud_instance_types" "insttype-zhangjiakou" {
  provider          = alicloud.zhangjiakou
  memory_size       = 1
  cpu_core_count    = 1
  availability_zone = data.alicloud_zones.zones_ds_zhangjiakou.zones.0.id
}
data "alicloud_instance_types" "insttype-huhehaote" {
  provider          = alicloud.huhehaote
  memory_size       = 1
  cpu_core_count    = 1
  availability_zone = data.alicloud_zones.zones_ds_huhehaote.zones.0.id
}
data "alicloud_instance_types" "insttype-wulanchabu" {
  provider          = alicloud.wulanchabu
  memory_size       = 4
  cpu_core_count    = 2
  availability_zone = data.alicloud_zones.zones_ds_wulanchabu.zones.0.id
}
data "alicloud_instance_types" "insttype-hangzhou" {
  provider          = alicloud.hangzhou
  memory_size       = 1
  cpu_core_count    = 1
  availability_zone = data.alicloud_zones.zones_ds_hangzhou.zones.0.id
}
data "alicloud_instance_types" "insttype-shenzhen" {
  provider          = alicloud.shenzhen
  memory_size       = 1
  cpu_core_count    = 1
  availability_zone = data.alicloud_zones.zones_ds_shenzhen.zones.0.id
}
data "alicloud_instance_types" "insttype-shanghai" {
  provider          = alicloud.shanghai
  memory_size       = 1
  cpu_core_count    = 1
  availability_zone = data.alicloud_zones.zones_ds_shanghai.zones.1.id
}
data "alicloud_instance_types" "insttype-heyuan" {
  provider          = alicloud.heyuan
  memory_size       = 1
  cpu_core_count    = 1
  availability_zone = data.alicloud_zones.zones_ds_heyuan.zones.0.id
}
data "alicloud_instance_types" "insttype-guangzhou" {
  provider          = alicloud.guangzhou
  memory_size       = 1
  cpu_core_count    = 1
  availability_zone = data.alicloud_zones.zones_ds_guangzhou.zones.0.id
}
data "alicloud_instance_types" "insttype-chengdu" {
  provider          = alicloud.chengdu
  memory_size       = 1
  cpu_core_count    = 1
  availability_zone = data.alicloud_zones.zones_ds_chengdu.zones.0.id
}
data "alicloud_instance_types" "insttype-hongkong" {
  provider          = alicloud.hongkong
  memory_size       = 1
  cpu_core_count    = 1
  availability_zone = data.alicloud_zones.zones_ds_hongkong.zones.0.id
}

###############VPC################

resource "alicloud_vpc" "alivpc-qingdao" {
  provider   = alicloud.qingdao
  cidr_block = "10.0.0.0/16"

}
resource "alicloud_vpc" "alivpc-beijing" {
  provider   = alicloud.beijing
  cidr_block = "10.1.0.0/16"


}
resource "alicloud_vpc" "alivpc-zhangjiakou" {
  provider   = alicloud.zhangjiakou
  cidr_block = "10.2.0.0/16"


}
resource "alicloud_vpc" "alivpc-huhehaote" {
  provider   = alicloud.huhehaote
  cidr_block = "10.3.0.0/16"


}
resource "alicloud_vpc" "alivpc-wulanchabu" {
  provider   = alicloud.wulanchabu
  cidr_block = "10.4.0.0/16"


}
resource "alicloud_vpc" "alivpc-hangzhou" {
  provider   = alicloud.hangzhou
  cidr_block = "10.5.0.0/16"


}
resource "alicloud_vpc" "alivpc-shanghai" {
  provider   = alicloud.shanghai
  cidr_block = "10.6.0.0/16"


}
resource "alicloud_vpc" "alivpc-shenzhen" {
  provider   = alicloud.shenzhen
  cidr_block = "10.7.0.0/16"


}
resource "alicloud_vpc" "alivpc-heyuan" {
  provider   = alicloud.heyuan
  cidr_block = "10.8.0.0/16"


}
resource "alicloud_vpc" "alivpc-guangzhou" {
  provider   = alicloud.guangzhou
  cidr_block = "10.9.0.0/16"


}

resource "alicloud_vpc" "alivpc-chengdu" {
  provider   = alicloud.chengdu
  cidr_block = "10.10.0.0/16"


}

resource "alicloud_vpc" "alivpc-hongkong" {
  provider   = alicloud.hongkong
  cidr_block = "10.11.0.0/16"


}

#############VSWITCH############
resource "alicloud_vswitch" "alivsw-qingdao" {
   provider = alicloud.qingdao
  vpc_id     = alicloud_vpc.alivpc-qingdao.id
  cidr_block = "10.0.0.0/24"
  zone_id    = data.alicloud_zones.zones_ds_qingdao.zones.0.id
}
resource "alicloud_vswitch" "alivsw-beijing" {
    provider = alicloud.beijing
  vpc_id     = alicloud_vpc.alivpc-beijing.id
  cidr_block = "10.1.0.0/24"
  zone_id    = data.alicloud_zones.zones_ds_beijing.zones.0.id
}
resource "alicloud_vswitch" "alivsw-zhangjiakou" {
   provider = alicloud.zhangjiakou
  vpc_id     = alicloud_vpc.alivpc-zhangjiakou.id
  cidr_block = "10.2.0.0/24"
  zone_id    = data.alicloud_zones.zones_ds_zhangjiakou.zones.0.id
}
resource "alicloud_vswitch" "alivsw-huhehaote" {
   provider = alicloud.huhehaote
  vpc_id     = alicloud_vpc.alivpc-huhehaote.id
  cidr_block = "10.3.0.0/24"
  zone_id    = data.alicloud_zones.zones_ds_huhehaote.zones.0.id
}
resource "alicloud_vswitch" "alivsw-wulanchabu" {
   provider = alicloud.wulanchabu
  vpc_id     = alicloud_vpc.alivpc-wulanchabu.id
  cidr_block = "10.4.0.0/24"
  zone_id    = data.alicloud_zones.zones_ds_wulanchabu.zones.0.id
}
resource "alicloud_vswitch" "alivsw-hangzhou" {
   provider = alicloud.hangzhou
  vpc_id     = alicloud_vpc.alivpc-hangzhou.id
  cidr_block = "10.5.0.0/24"
  zone_id    = data.alicloud_zones.zones_ds_hangzhou.zones.0.id
}
resource "alicloud_vswitch" "alivsw-shanghai" {
   provider = alicloud.shanghai
  vpc_id     = alicloud_vpc.alivpc-shanghai.id
  cidr_block = "10.6.0.0/24"
  zone_id    = data.alicloud_zones.zones_ds_shanghai.zones.1.id
}
resource "alicloud_vswitch" "alivsw-shenzhen" {
   provider = alicloud.shenzhen
  vpc_id     = alicloud_vpc.alivpc-shenzhen.id
  cidr_block = "10.7.0.0/24"
  zone_id    = data.alicloud_zones.zones_ds_shenzhen.zones.0.id
}
resource "alicloud_vswitch" "alivsw-heyuan" {
   provider = alicloud.heyuan
  vpc_id     = alicloud_vpc.alivpc-heyuan.id
  cidr_block = "10.8.0.0/24"
  zone_id    = data.alicloud_zones.zones_ds_heyuan.zones.0.id
}
resource "alicloud_vswitch" "alivsw-guangzhou" {
   provider = alicloud.guangzhou
  vpc_id     = alicloud_vpc.alivpc-guangzhou.id
  cidr_block = "10.9.0.0/24"
  zone_id    = data.alicloud_zones.zones_ds_guangzhou.zones.0.id
}
resource "alicloud_vswitch" "alivsw-chengdu" {
    provider = alicloud.chengdu
  vpc_id     = alicloud_vpc.alivpc-chengdu.id
  cidr_block = "10.10.0.0/24"
  zone_id    = data.alicloud_zones.zones_ds_chengdu.zones.0.id
}
resource "alicloud_vswitch" "alivsw-hongkong" {
   provider = alicloud.hongkong
  vpc_id     = alicloud_vpc.alivpc-hongkong.id
  cidr_block = "10.11.0.0/24"
  zone_id    = data.alicloud_zones.zones_ds_hongkong.zones.0.id
}

############Key pair##########
resource "alicloud_ecs_key_pair" "publickey-qingdao" {
  provider      = alicloud.qingdao
  key_pair_name = "my_public_key-qingdao"
  public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCd74+93PDWMWZuE4I5E9QTLPd5SKNZERw0HPhmsExLeTzGvdTRR9Yytcb8y9zmm5QegHjKeFFJY0wEdeafGdQQ0MYfMSka70BVG8kOnbuKhlipmNMY/86lUQZnXOKF8MDX1NtaffXCydVWZRvlDfZd2jcKlmSfY1rysYD2y9Ct5G8HVBxRUMNGqKwjUAu1BmuCyKbTVvxiHibLeM7GHhDzoSfUUZi0BvwHehIrTTgpVmcm4lBKvJXSIKwQytmWeyOHWDNWUjlzPVCbsnmuOS0xrz0jjKvh3X9c+UujRS0NN63aW+Hg/DPJ1FbAqEcAzfK84Mxlz3u0G4E1DGUargrV skp-m5e5q0sg3ouk59q7m3qi"
}
resource "alicloud_ecs_key_pair" "publickey-beijing" {
  provider      = alicloud.beijing
  key_pair_name = "my_public_key-beijing"
  public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCd74+93PDWMWZuE4I5E9QTLPd5SKNZERw0HPhmsExLeTzGvdTRR9Yytcb8y9zmm5QegHjKeFFJY0wEdeafGdQQ0MYfMSka70BVG8kOnbuKhlipmNMY/86lUQZnXOKF8MDX1NtaffXCydVWZRvlDfZd2jcKlmSfY1rysYD2y9Ct5G8HVBxRUMNGqKwjUAu1BmuCyKbTVvxiHibLeM7GHhDzoSfUUZi0BvwHehIrTTgpVmcm4lBKvJXSIKwQytmWeyOHWDNWUjlzPVCbsnmuOS0xrz0jjKvh3X9c+UujRS0NN63aW+Hg/DPJ1FbAqEcAzfK84Mxlz3u0G4E1DGUargrV skp-m5e5q0sg3ouk59q7m3qi"
}
resource "alicloud_ecs_key_pair" "publickey-zhangjiakou" {
  provider      = alicloud.zhangjiakou
  key_pair_name = "my_public_key-zhangjiakou"
  public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCd74+93PDWMWZuE4I5E9QTLPd5SKNZERw0HPhmsExLeTzGvdTRR9Yytcb8y9zmm5QegHjKeFFJY0wEdeafGdQQ0MYfMSka70BVG8kOnbuKhlipmNMY/86lUQZnXOKF8MDX1NtaffXCydVWZRvlDfZd2jcKlmSfY1rysYD2y9Ct5G8HVBxRUMNGqKwjUAu1BmuCyKbTVvxiHibLeM7GHhDzoSfUUZi0BvwHehIrTTgpVmcm4lBKvJXSIKwQytmWeyOHWDNWUjlzPVCbsnmuOS0xrz0jjKvh3X9c+UujRS0NN63aW+Hg/DPJ1FbAqEcAzfK84Mxlz3u0G4E1DGUargrV skp-m5e5q0sg3ouk59q7m3qi"
}
resource "alicloud_ecs_key_pair" "publickey-huhehaote" {
  provider      = alicloud.huhehaote
  key_pair_name = "my_public_key-huhehaote"
  public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCd74+93PDWMWZuE4I5E9QTLPd5SKNZERw0HPhmsExLeTzGvdTRR9Yytcb8y9zmm5QegHjKeFFJY0wEdeafGdQQ0MYfMSka70BVG8kOnbuKhlipmNMY/86lUQZnXOKF8MDX1NtaffXCydVWZRvlDfZd2jcKlmSfY1rysYD2y9Ct5G8HVBxRUMNGqKwjUAu1BmuCyKbTVvxiHibLeM7GHhDzoSfUUZi0BvwHehIrTTgpVmcm4lBKvJXSIKwQytmWeyOHWDNWUjlzPVCbsnmuOS0xrz0jjKvh3X9c+UujRS0NN63aW+Hg/DPJ1FbAqEcAzfK84Mxlz3u0G4E1DGUargrV skp-m5e5q0sg3ouk59q7m3qi"
}
resource "alicloud_ecs_key_pair" "publickey-wulanchabu" {
  provider      = alicloud.wulanchabu
  key_pair_name = "my_public_key-wulanchabu"
  public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCd74+93PDWMWZuE4I5E9QTLPd5SKNZERw0HPhmsExLeTzGvdTRR9Yytcb8y9zmm5QegHjKeFFJY0wEdeafGdQQ0MYfMSka70BVG8kOnbuKhlipmNMY/86lUQZnXOKF8MDX1NtaffXCydVWZRvlDfZd2jcKlmSfY1rysYD2y9Ct5G8HVBxRUMNGqKwjUAu1BmuCyKbTVvxiHibLeM7GHhDzoSfUUZi0BvwHehIrTTgpVmcm4lBKvJXSIKwQytmWeyOHWDNWUjlzPVCbsnmuOS0xrz0jjKvh3X9c+UujRS0NN63aW+Hg/DPJ1FbAqEcAzfK84Mxlz3u0G4E1DGUargrV skp-m5e5q0sg3ouk59q7m3qi"
}
resource "alicloud_ecs_key_pair" "publickey-hangzhou" {
  provider      = alicloud.hangzhou
  key_pair_name = "my_public_key-hangzhou"
  public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCd74+93PDWMWZuE4I5E9QTLPd5SKNZERw0HPhmsExLeTzGvdTRR9Yytcb8y9zmm5QegHjKeFFJY0wEdeafGdQQ0MYfMSka70BVG8kOnbuKhlipmNMY/86lUQZnXOKF8MDX1NtaffXCydVWZRvlDfZd2jcKlmSfY1rysYD2y9Ct5G8HVBxRUMNGqKwjUAu1BmuCyKbTVvxiHibLeM7GHhDzoSfUUZi0BvwHehIrTTgpVmcm4lBKvJXSIKwQytmWeyOHWDNWUjlzPVCbsnmuOS0xrz0jjKvh3X9c+UujRS0NN63aW+Hg/DPJ1FbAqEcAzfK84Mxlz3u0G4E1DGUargrV skp-m5e5q0sg3ouk59q7m3qi"
}
resource "alicloud_ecs_key_pair" "publickey-shanghai" {
  provider      = alicloud.shanghai
  key_pair_name = "my_public_key-shanghai"
  public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCd74+93PDWMWZuE4I5E9QTLPd5SKNZERw0HPhmsExLeTzGvdTRR9Yytcb8y9zmm5QegHjKeFFJY0wEdeafGdQQ0MYfMSka70BVG8kOnbuKhlipmNMY/86lUQZnXOKF8MDX1NtaffXCydVWZRvlDfZd2jcKlmSfY1rysYD2y9Ct5G8HVBxRUMNGqKwjUAu1BmuCyKbTVvxiHibLeM7GHhDzoSfUUZi0BvwHehIrTTgpVmcm4lBKvJXSIKwQytmWeyOHWDNWUjlzPVCbsnmuOS0xrz0jjKvh3X9c+UujRS0NN63aW+Hg/DPJ1FbAqEcAzfK84Mxlz3u0G4E1DGUargrV skp-m5e5q0sg3ouk59q7m3qi"
}
resource "alicloud_ecs_key_pair" "publickey-shenzhen" {
  provider      = alicloud.shenzhen
  key_pair_name = "my_public_key-shenzhen"
  public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCd74+93PDWMWZuE4I5E9QTLPd5SKNZERw0HPhmsExLeTzGvdTRR9Yytcb8y9zmm5QegHjKeFFJY0wEdeafGdQQ0MYfMSka70BVG8kOnbuKhlipmNMY/86lUQZnXOKF8MDX1NtaffXCydVWZRvlDfZd2jcKlmSfY1rysYD2y9Ct5G8HVBxRUMNGqKwjUAu1BmuCyKbTVvxiHibLeM7GHhDzoSfUUZi0BvwHehIrTTgpVmcm4lBKvJXSIKwQytmWeyOHWDNWUjlzPVCbsnmuOS0xrz0jjKvh3X9c+UujRS0NN63aW+Hg/DPJ1FbAqEcAzfK84Mxlz3u0G4E1DGUargrV skp-m5e5q0sg3ouk59q7m3qi"
}
resource "alicloud_ecs_key_pair" "publickey-heyuan" {
  provider      = alicloud.heyuan
  key_pair_name = "my_public_key-heyuan"
  public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCd74+93PDWMWZuE4I5E9QTLPd5SKNZERw0HPhmsExLeTzGvdTRR9Yytcb8y9zmm5QegHjKeFFJY0wEdeafGdQQ0MYfMSka70BVG8kOnbuKhlipmNMY/86lUQZnXOKF8MDX1NtaffXCydVWZRvlDfZd2jcKlmSfY1rysYD2y9Ct5G8HVBxRUMNGqKwjUAu1BmuCyKbTVvxiHibLeM7GHhDzoSfUUZi0BvwHehIrTTgpVmcm4lBKvJXSIKwQytmWeyOHWDNWUjlzPVCbsnmuOS0xrz0jjKvh3X9c+UujRS0NN63aW+Hg/DPJ1FbAqEcAzfK84Mxlz3u0G4E1DGUargrV skp-m5e5q0sg3ouk59q7m3qi"
}
resource "alicloud_ecs_key_pair" "publickey-guangzhou" {
  provider      = alicloud.guangzhou
  key_pair_name = "my_public_key-guangzhou"
  public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCd74+93PDWMWZuE4I5E9QTLPd5SKNZERw0HPhmsExLeTzGvdTRR9Yytcb8y9zmm5QegHjKeFFJY0wEdeafGdQQ0MYfMSka70BVG8kOnbuKhlipmNMY/86lUQZnXOKF8MDX1NtaffXCydVWZRvlDfZd2jcKlmSfY1rysYD2y9Ct5G8HVBxRUMNGqKwjUAu1BmuCyKbTVvxiHibLeM7GHhDzoSfUUZi0BvwHehIrTTgpVmcm4lBKvJXSIKwQytmWeyOHWDNWUjlzPVCbsnmuOS0xrz0jjKvh3X9c+UujRS0NN63aW+Hg/DPJ1FbAqEcAzfK84Mxlz3u0G4E1DGUargrV skp-m5e5q0sg3ouk59q7m3qi"
}
resource "alicloud_ecs_key_pair" "publickey-chengdu" {
  provider      = alicloud.chengdu
  key_pair_name = "my_public_key-chengdu"
  public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCd74+93PDWMWZuE4I5E9QTLPd5SKNZERw0HPhmsExLeTzGvdTRR9Yytcb8y9zmm5QegHjKeFFJY0wEdeafGdQQ0MYfMSka70BVG8kOnbuKhlipmNMY/86lUQZnXOKF8MDX1NtaffXCydVWZRvlDfZd2jcKlmSfY1rysYD2y9Ct5G8HVBxRUMNGqKwjUAu1BmuCyKbTVvxiHibLeM7GHhDzoSfUUZi0BvwHehIrTTgpVmcm4lBKvJXSIKwQytmWeyOHWDNWUjlzPVCbsnmuOS0xrz0jjKvh3X9c+UujRS0NN63aW+Hg/DPJ1FbAqEcAzfK84Mxlz3u0G4E1DGUargrV skp-m5e5q0sg3ouk59q7m3qi"
}
resource "alicloud_ecs_key_pair" "publickey-hongkong" {
  provider      = alicloud.hongkong
  key_pair_name = "my_public_key-hongkong"
  public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCd74+93PDWMWZuE4I5E9QTLPd5SKNZERw0HPhmsExLeTzGvdTRR9Yytcb8y9zmm5QegHjKeFFJY0wEdeafGdQQ0MYfMSka70BVG8kOnbuKhlipmNMY/86lUQZnXOKF8MDX1NtaffXCydVWZRvlDfZd2jcKlmSfY1rysYD2y9Ct5G8HVBxRUMNGqKwjUAu1BmuCyKbTVvxiHibLeM7GHhDzoSfUUZi0BvwHehIrTTgpVmcm4lBKvJXSIKwQytmWeyOHWDNWUjlzPVCbsnmuOS0xrz0jjKvh3X9c+UujRS0NN63aW+Hg/DPJ1FbAqEcAzfK84Mxlz3u0G4E1DGUargrV skp-m5e5q0sg3ouk59q7m3qi"
}


################CEN################
resource "alicloud_cen_instance" "alicen" {

  #############CEN ATTACH################
}
resource "alicloud_cen_instance_attachment" "alicenattach-qingdao" {
  #provider = alicloud.qingdao
  instance_id              = alicloud_cen_instance.alicen.id
  child_instance_id        = alicloud_vpc.alivpc-qingdao.id
  child_instance_type      = "VPC"
  child_instance_region_id = "cn-qingdao"

}
resource "alicloud_cen_instance_attachment" "alicenattach-beijing" {
  #provider = alicloud.qingdao
  instance_id              = alicloud_cen_instance.alicen.id
  child_instance_id        = alicloud_vpc.alivpc-beijing.id
  child_instance_type      = "VPC"
  child_instance_region_id = "cn-beijing"

}
resource "alicloud_cen_instance_attachment" "alicenattach-zhangjiakou" {
  #provider = alicloud.qingdao
  instance_id              = alicloud_cen_instance.alicen.id
  child_instance_id        = alicloud_vpc.alivpc-zhangjiakou.id
  child_instance_type      = "VPC"
  child_instance_region_id = "cn-zhangjiakou"

}
resource "alicloud_cen_instance_attachment" "alicenattach-huhehaote" {
  #provider = alicloud.qingdao
  instance_id              = alicloud_cen_instance.alicen.id
  child_instance_id        = alicloud_vpc.alivpc-huhehaote.id
  child_instance_type      = "VPC"
  child_instance_region_id = "cn-huhehaote"

}
resource "alicloud_cen_instance_attachment" "alicenattach-wulanchabu" {
  #provider = alicloud.qingdao
  instance_id              = alicloud_cen_instance.alicen.id
  child_instance_id        = alicloud_vpc.alivpc-wulanchabu.id
  child_instance_type      = "VPC"
  child_instance_region_id = "cn-wulanchabu"

}
resource "alicloud_cen_instance_attachment" "alicenattach-hangzhou" {
  #provider = alicloud.qingdao
  instance_id              = alicloud_cen_instance.alicen.id
  child_instance_id        = alicloud_vpc.alivpc-hangzhou.id
  child_instance_type      = "VPC"
  child_instance_region_id = "cn-hangzhou"

}
resource "alicloud_cen_instance_attachment" "alicenattach-shanghai" {
  #provider = alicloud.qingdao
  instance_id              = alicloud_cen_instance.alicen.id
  child_instance_id        = alicloud_vpc.alivpc-shanghai.id
  child_instance_type      = "VPC"
  child_instance_region_id = "cn-shanghai"

}
resource "alicloud_cen_instance_attachment" "alicenattach-shenzhen" {
  #provider = alicloud.qingdao
  instance_id              = alicloud_cen_instance.alicen.id
  child_instance_id        = alicloud_vpc.alivpc-shenzhen.id
  child_instance_type      = "VPC"
  child_instance_region_id = "cn-shenzhen"

}
resource "alicloud_cen_instance_attachment" "alicenattach-heyuan" {
  #provider = alicloud.qingdao
  instance_id              = alicloud_cen_instance.alicen.id
  child_instance_id        = alicloud_vpc.alivpc-heyuan.id
  child_instance_type      = "VPC"
  child_instance_region_id = "cn-heyuan"

}
resource "alicloud_cen_instance_attachment" "alicenattach-guangzhou" {
  #provider = alicloud.qingdao
  instance_id              = alicloud_cen_instance.alicen.id
  child_instance_id        = alicloud_vpc.alivpc-guangzhou.id
  child_instance_type      = "VPC"
  child_instance_region_id = "cn-guangzhou"

}
resource "alicloud_cen_instance_attachment" "alicenattach-chengdu" {
  #provider = alicloud.qingdao
  instance_id              = alicloud_cen_instance.alicen.id
  child_instance_id        = alicloud_vpc.alivpc-chengdu.id
  child_instance_type      = "VPC"
  child_instance_region_id = "cn-chengdu"

}
resource "alicloud_cen_instance_attachment" "alicenattach-hongkong" {
  #provider = alicloud.qingdao
  instance_id              = alicloud_cen_instance.alicen.id
  child_instance_id        = alicloud_vpc.alivpc-hongkong.id
  child_instance_type      = "VPC"
  child_instance_region_id = "cn-hongkong"

}

##################security group rule############
resource "alicloud_security_group" "SG-qingdao" {
  provider = alicloud.qingdao
  #name = "SG-qingdao"
  vpc_id = alicloud_vpc.alivpc-qingdao.id
}
resource "alicloud_security_group_rule" "ssh-qingdao" {
  provider    = alicloud.qingdao
  type        = "ingress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.SG-qingdao.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "icmp-qingdao" {
  provider    = alicloud.qingdao
  type        = "ingress"
  ip_protocol = "icmp"
  #  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "-1/-1"
  priority          = 11
  security_group_id = alicloud_security_group.SG-qingdao.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "out-qingdao" {
  provider    = alicloud.qingdao
  type        = "egress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 2
  security_group_id = alicloud_security_group.SG-qingdao.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group" "SG-beijing" {
  provider = alicloud.beijing
  #name = "SG-qingdao"
  vpc_id = alicloud_vpc.alivpc-beijing.id
}
resource "alicloud_security_group_rule" "ssh-beijing" {
  provider    = alicloud.beijing
  type        = "ingress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.SG-beijing.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "icmp-beijing" {
  provider    = alicloud.beijing
  type        = "ingress"
  ip_protocol = "icmp"
  #  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "-1/-1"
  priority          = 11
  security_group_id = alicloud_security_group.SG-beijing.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "out-beijing" {
  provider    = alicloud.beijing
  type        = "egress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 2
  security_group_id = alicloud_security_group.SG-beijing.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group" "SG-zhangjiakou" {
  provider = alicloud.zhangjiakou
  #name = "SG-qingdao"
  vpc_id = alicloud_vpc.alivpc-zhangjiakou.id
}
resource "alicloud_security_group_rule" "ssh-zhangjiakou" {
  provider    = alicloud.zhangjiakou
  type        = "ingress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.SG-zhangjiakou.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "icmp-zhangjiakou" {
  provider    = alicloud.zhangjiakou
  type        = "ingress"
  ip_protocol = "icmp"
  #  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "-1/-1"
  priority          = 11
  security_group_id = alicloud_security_group.SG-zhangjiakou.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "out-zhangjiakou" {
  provider    = alicloud.zhangjiakou
  type        = "egress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 2
  security_group_id = alicloud_security_group.SG-zhangjiakou.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group" "SG-huhehaote" {
  provider = alicloud.huhehaote
  #name = "SG-qingdao"
  vpc_id = alicloud_vpc.alivpc-huhehaote.id
}
resource "alicloud_security_group_rule" "ssh-huhehaote" {
  provider    = alicloud.huhehaote
  type        = "ingress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.SG-huhehaote.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "icmp-huhehaote" {
  provider    = alicloud.huhehaote
  type        = "ingress"
  ip_protocol = "icmp"
  #  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "-1/-1"
  priority          = 11
  security_group_id = alicloud_security_group.SG-huhehaote.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "out-huhehaote" {
  provider    = alicloud.huhehaote
  type        = "egress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 2
  security_group_id = alicloud_security_group.SG-huhehaote.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group" "SG-wulanchabu" {
  provider = alicloud.wulanchabu
  #name = "SG-qingdao"
  vpc_id = alicloud_vpc.alivpc-wulanchabu.id
}
resource "alicloud_security_group_rule" "ssh-wulanchabu" {
  provider    = alicloud.wulanchabu
  type        = "ingress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.SG-wulanchabu.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "icmp-wulanchabu" {
  provider    = alicloud.wulanchabu
  type        = "ingress"
  ip_protocol = "icmp"
  #  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "-1/-1"
  priority          = 11
  security_group_id = alicloud_security_group.SG-wulanchabu.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "out-wulanchabu" {
  provider    = alicloud.wulanchabu
  type        = "egress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 2
  security_group_id = alicloud_security_group.SG-wulanchabu.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group" "SG-hangzhou" {
  provider = alicloud.hangzhou
  #name = "SG-qingdao"
  vpc_id = alicloud_vpc.alivpc-hangzhou.id
}
resource "alicloud_security_group_rule" "ssh-hangzhou" {
  provider    = alicloud.hangzhou
  type        = "ingress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.SG-hangzhou.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "icmp-hangzhou" {
  provider    = alicloud.hangzhou
  type        = "ingress"
  ip_protocol = "icmp"
  #  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "-1/-1"
  priority          = 11
  security_group_id = alicloud_security_group.SG-hangzhou.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "out-hangzhou" {
  provider    = alicloud.hangzhou
  type        = "egress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 2
  security_group_id = alicloud_security_group.SG-hangzhou.id
  cidr_ip           = "0.0.0.0/0"
}

resource "alicloud_security_group" "SG-shanghai" {
  provider = alicloud.shanghai
  #name = "SG-qingdao"
  vpc_id = alicloud_vpc.alivpc-shanghai.id
}
resource "alicloud_security_group_rule" "ssh-shanghai" {
  provider    = alicloud.shanghai
  type        = "ingress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.SG-shanghai.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "icmp-shanghai" {
  provider    = alicloud.shanghai
  type        = "ingress"
  ip_protocol = "icmp"
  #  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "-1/-1"
  priority          = 11
  security_group_id = alicloud_security_group.SG-shanghai.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "out-shanghai" {
  provider    = alicloud.shanghai
  type        = "egress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 2
  security_group_id = alicloud_security_group.SG-shanghai.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group" "SG-shenzhen" {
  provider = alicloud.shenzhen
  #name = "SG-qingdao"
  vpc_id = alicloud_vpc.alivpc-shenzhen.id
}
resource "alicloud_security_group_rule" "ssh-shenzhen" {
  provider    = alicloud.shenzhen
  type        = "ingress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.SG-shenzhen.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "icmp-shenzhen" {
  provider    = alicloud.shenzhen
  type        = "ingress"
  ip_protocol = "icmp"
  #  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "-1/-1"
  priority          = 11
  security_group_id = alicloud_security_group.SG-shenzhen.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "out-shenzhen" {
  provider    = alicloud.shenzhen
  type        = "egress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 2
  security_group_id = alicloud_security_group.SG-shenzhen.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group" "SG-heyuan" {
  provider = alicloud.heyuan
  #name = "SG-qingdao"
  vpc_id = alicloud_vpc.alivpc-heyuan.id
}
resource "alicloud_security_group_rule" "ssh-heyuan" {
  provider    = alicloud.heyuan
  type        = "ingress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.SG-heyuan.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "icmp-heyuan" {
  provider    = alicloud.heyuan
  type        = "ingress"
  ip_protocol = "icmp"
  #  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "-1/-1"
  priority          = 11
  security_group_id = alicloud_security_group.SG-heyuan.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "out-heyuan" {
  provider    = alicloud.heyuan
  type        = "egress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 2
  security_group_id = alicloud_security_group.SG-heyuan.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group" "SG-guangzhou" {
  provider = alicloud.guangzhou
  #name = "SG-qingdao"
  vpc_id = alicloud_vpc.alivpc-guangzhou.id
}
resource "alicloud_security_group_rule" "ssh-guangzhou" {
  provider    = alicloud.guangzhou
  type        = "ingress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.SG-guangzhou.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "icmp-guangzhou" {
  provider    = alicloud.guangzhou
  type        = "ingress"
  ip_protocol = "icmp"
  #  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "-1/-1"
  priority          = 11
  security_group_id = alicloud_security_group.SG-guangzhou.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "out-guangzhou" {
  provider    = alicloud.guangzhou
  type        = "egress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 2
  security_group_id = alicloud_security_group.SG-guangzhou.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group" "SG-chengdu" {
  provider = alicloud.chengdu
  #name = "SG-qingdao"
  vpc_id = alicloud_vpc.alivpc-chengdu.id
}
resource "alicloud_security_group_rule" "ssh-chengdu" {
  provider    = alicloud.chengdu
  type        = "ingress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.SG-chengdu.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "icmp-chengdu" {
  provider    = alicloud.chengdu
  type        = "ingress"
  ip_protocol = "icmp"
  #  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "-1/-1"
  priority          = 11
  security_group_id = alicloud_security_group.SG-chengdu.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "out-chengdu" {
  provider    = alicloud.chengdu
  type        = "egress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 2
  security_group_id = alicloud_security_group.SG-chengdu.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group" "SG-hongkong" {
  provider = alicloud.hongkong
  #name = "SG-qingdao"
  vpc_id = alicloud_vpc.alivpc-hongkong.id
}
resource "alicloud_security_group_rule" "ssh-hongkong" {
  provider    = alicloud.hongkong
  type        = "ingress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.SG-hongkong.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "icmp-hongkong" {
  provider    = alicloud.hongkong
  type        = "ingress"
  ip_protocol = "icmp"
  #  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "-1/-1"
  priority          = 11
  security_group_id = alicloud_security_group.SG-hongkong.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "out-hongkong" {
  provider    = alicloud.hongkong
  type        = "egress"
  ip_protocol = "tcp"
  # nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 2
  security_group_id = alicloud_security_group.SG-hongkong.id
  cidr_ip           = "0.0.0.0/0"
}
#############ECS instance########################
resource "alicloud_instance" "ali-qingdao" {
  host_name         = "ali-qingdao"
  provider          = alicloud.qingdao
  availability_zone = data.alicloud_zones.zones_ds_qingdao.zones.0.id
  security_groups   = [alicloud_security_group.SG-qingdao.id]
  # series III
  instance_type        = data.alicloud_instance_types.insttype-qingdao.instance_types.0.id
  system_disk_category = "cloud_efficiency"
  image_id             = "aliyun_3_x64_20G_alibase_20210425.vhd"
  # host_name        = "test_foo"
  vswitch_id                 = alicloud_vswitch.alivsw-qingdao.id
  internet_max_bandwidth_out = 1
  key_name = alicloud_ecs_key_pair.publickey-qingdao.key_pair_name
  user_data = file("showip.sh")
}
#resource "alicloud_ecs_key_pair_attachment" "alikeypair-qingdao" {
#  provider      = alicloud.qingdao
#  key_pair_name = "my_public_key-qingdao"
#  instance_ids  = [alicloud_instance.ali-qingdao.id]
#}
resource "alicloud_instance" "ali-beijing" {
  host_name         = "ali-beijing"
  provider          = alicloud.beijing
  availability_zone = data.alicloud_zones.zones_ds_beijing.zones.0.id
  security_groups   = [alicloud_security_group.SG-beijing.id]
  # series III
  instance_type        = data.alicloud_instance_types.insttype-beijing.instance_types.0.id
  system_disk_category = "cloud_efficiency"
  image_id             = "aliyun_3_x64_20G_alibase_20210425.vhd"
  # host_name        = "test_foo"
  vswitch_id                 = alicloud_vswitch.alivsw-beijing.id
  internet_max_bandwidth_out = 1
  key_name = alicloud_ecs_key_pair.publickey-beijing.key_pair_name
}
#resource "alicloud_ecs_key_pair_attachment" "alikeypair-beijing" {
#  provider      = alicloud.beijing
#  key_pair_name = "my_public_key-beijing"
#  instance_ids  = [alicloud_instance.ali-beijing.id]
#}
resource "alicloud_instance" "ali-zhangjiakou" {
  host_name         = "ali-zhangjiakou"
  provider          = alicloud.zhangjiakou
  availability_zone = data.alicloud_zones.zones_ds_zhangjiakou.zones.0.id
  security_groups   = [alicloud_security_group.SG-zhangjiakou.id]
  # series III
  instance_type        = data.alicloud_instance_types.insttype-zhangjiakou.instance_types.0.id
  system_disk_category = "cloud_efficiency"
  image_id             = "aliyun_3_x64_20G_alibase_20210425.vhd"
  # host_name        = "test_foo"
  vswitch_id                 = alicloud_vswitch.alivsw-zhangjiakou.id
  internet_max_bandwidth_out = 1
  key_name = alicloud_ecs_key_pair.publickey-zhangjiakou.key_pair_name
}
#resource "alicloud_ecs_key_pair_attachment" "alikeypair-zhangjiakou" {
#  provider      = alicloud.zhangjiakou
#  key_pair_name = "my_public_key-zhangjiakou"
#  instance_ids  = [alicloud_instance.ali-zhangjiakou.id]
#}
resource "alicloud_instance" "ali-huhehaote" {
  host_name         = "ali-huhehaote"
  provider          = alicloud.huhehaote
  availability_zone = data.alicloud_zones.zones_ds_huhehaote.zones.0.id
  security_groups   = [alicloud_security_group.SG-huhehaote.id]
  # series III
  instance_type        = data.alicloud_instance_types.insttype-huhehaote.instance_types.0.id
  system_disk_category = "cloud_efficiency"
  image_id             = "aliyun_3_x64_20G_alibase_20210425.vhd"
  # host_name        = "test_foo"
  vswitch_id                 = alicloud_vswitch.alivsw-huhehaote.id
  internet_max_bandwidth_out = 1
  key_name = alicloud_ecs_key_pair.publickey-huhehaote.key_pair_name
}
#resource "alicloud_ecs_key_pair_attachment" "alikeypair-huhehaote" {
#  provider      = alicloud.huhehaote
#  key_pair_name = "my_public_key-huhehaote"
#  instance_ids  = [alicloud_instance.ali-huhehaote.id]
#}
resource "alicloud_instance" "ali-wulanchabu" {
  host_name         = "ali-wulanchabu"
  provider          = alicloud.wulanchabu
  availability_zone = data.alicloud_zones.zones_ds_wulanchabu.zones.0.id
  security_groups   = [alicloud_security_group.SG-wulanchabu.id]
  # series III
  instance_type        = data.alicloud_instance_types.insttype-wulanchabu.instance_types.0.id
  system_disk_category = "cloud_efficiency"
  image_id             = "aliyun_3_x64_20G_alibase_20210425.vhd"
  # host_name        = "test_foo"
  vswitch_id                 = alicloud_vswitch.alivsw-wulanchabu.id
  internet_max_bandwidth_out = 1
  key_name = alicloud_ecs_key_pair.publickey-wulanchabu.key_pair_name
}
#resource "alicloud_ecs_key_pair_attachment" "alikeypair-wulanchabu" {
#  provider      = alicloud.wulanchabu
#  key_pair_name = "my_public_key-wulanchabu"
#  instance_ids  = [alicloud_instance.ali-wulanchabu.id]
#}
resource "alicloud_instance" "ali-hangzhou" {
  host_name         = "ali-hangzhou"
  provider          = alicloud.hangzhou
  availability_zone = data.alicloud_zones.zones_ds_hangzhou.zones.0.id
  security_groups   = [alicloud_security_group.SG-hangzhou.id]
  # series III
  instance_type        = data.alicloud_instance_types.insttype-hangzhou.instance_types.0.id
  system_disk_category = "cloud_efficiency"
  image_id             = "aliyun_3_x64_20G_alibase_20210425.vhd"
  # host_name        = "test_foo"
  vswitch_id                 = alicloud_vswitch.alivsw-hangzhou.id
  internet_max_bandwidth_out = 1
  key_name = alicloud_ecs_key_pair.publickey-hangzhou.key_pair_name
}
#resource "alicloud_ecs_key_pair_attachment" "alikeypair-hangzhou" {
#  provider      = alicloud.hangzhou
#  key_pair_name = "my_public_key-hangzhou"
#  instance_ids  = [alicloud_instance.ali-hangzhou.id]
#}
resource "alicloud_instance" "ali-shanghai" {
  host_name         = "ali-shanghai"
  provider          = alicloud.shanghai
  availability_zone = data.alicloud_zones.zones_ds_shanghai.zones.1.id
  security_groups   = [alicloud_security_group.SG-shanghai.id]
  # series III
  instance_type        = data.alicloud_instance_types.insttype-shanghai.instance_types.0.id
  system_disk_category = "cloud_efficiency"
  image_id             = "aliyun_3_x64_20G_alibase_20210425.vhd"
  # host_name        = "test_foo"
  vswitch_id                 = alicloud_vswitch.alivsw-shanghai.id
  internet_max_bandwidth_out = 1
  key_name = alicloud_ecs_key_pair.publickey-shanghai.key_pair_name
  
}
#resource "alicloud_ecs_key_pair_attachment" "alikeypair-shanghai" {
#  provider      = alicloud.shanghai
#  key_pair_name = "my_public_key-shanghai"
#  instance_ids  = [alicloud_instance.ali-shanghai.id]
#}
resource "alicloud_instance" "ali-shenzhen" {
  host_name         = "ali-shenzhen"
  provider          = alicloud.shenzhen
  availability_zone = data.alicloud_zones.zones_ds_shenzhen.zones.0.id
  security_groups   = [alicloud_security_group.SG-shenzhen.id]
  # series III
  instance_type        = data.alicloud_instance_types.insttype-shenzhen.instance_types.0.id
  system_disk_category = "cloud_efficiency"
  image_id             = "aliyun_3_x64_20G_alibase_20210425.vhd"
  # host_name        = "test_foo"
  vswitch_id                 = alicloud_vswitch.alivsw-shenzhen.id
  internet_max_bandwidth_out = 1
  key_name = alicloud_ecs_key_pair.publickey-shenzhen.key_pair_name
}
#resource "alicloud_ecs_key_pair_attachment" "alikeypair-shenzhen" {
#  provider      = alicloud.shenzhen
#  key_pair_name = "my_public_key-shenzhen"
#  instance_ids  = [alicloud_instance.ali-shenzhen.id]
#}
resource "alicloud_instance" "ali-heyuan" {
  host_name         = "ali-heyuan"
  provider          = alicloud.heyuan
  availability_zone = data.alicloud_zones.zones_ds_heyuan.zones.0.id
  security_groups   = [alicloud_security_group.SG-heyuan.id]
  # series III
  instance_type        = data.alicloud_instance_types.insttype-heyuan.instance_types.0.id
  system_disk_category = "cloud_efficiency"
  image_id             = "aliyun_3_x64_20G_alibase_20210425.vhd"
  # host_name        = "test_foo"
  vswitch_id                 = alicloud_vswitch.alivsw-heyuan.id
  internet_max_bandwidth_out = 1
  key_name = alicloud_ecs_key_pair.publickey-heyuan.key_pair_name
}
#resource "alicloud_ecs_key_pair_attachment" "alikeypair-heyuan" {
#  provider      = alicloud.heyuan
#  key_pair_name = "my_public_key-heyuan"
#  instance_ids  = [alicloud_instance.ali-heyuan.id]
#}
resource "alicloud_instance" "ali-guangzhou" {
  host_name         = "ali-guangzhou"
  provider          = alicloud.guangzhou
  availability_zone = data.alicloud_zones.zones_ds_guangzhou.zones.0.id
  security_groups   = [alicloud_security_group.SG-guangzhou.id]
  # series III
  instance_type        = data.alicloud_instance_types.insttype-guangzhou.instance_types.0.id
  system_disk_category = "cloud_efficiency"
  image_id             = "aliyun_3_x64_20G_alibase_20210425.vhd"
  # host_name        = "test_foo"
  vswitch_id                 = alicloud_vswitch.alivsw-guangzhou.id
  internet_max_bandwidth_out = 1
  key_name = alicloud_ecs_key_pair.publickey-guangzhou.key_pair_name
}

#resource "alicloud_ecs_key_pair_attachment" "alikeypair-guangzhou" {
#  provider      = alicloud.guangzhou
#  key_pair_name = "my_public_key-guangzhou"
#  instance_ids  = [alicloud_instance.ali-guangzhou.id]
#}
resource "alicloud_instance" "ali-chengdu" {
  host_name         = "ali-chengdu"
  provider          = alicloud.chengdu
  availability_zone = data.alicloud_zones.zones_ds_chengdu.zones.0.id
  security_groups   = [alicloud_security_group.SG-chengdu.id]
  # series III
  instance_type        = data.alicloud_instance_types.insttype-chengdu.instance_types.0.id
  system_disk_category = "cloud_efficiency"
  image_id             = "aliyun_3_x64_20G_alibase_20210425.vhd"
  # host_name        = "test_foo"
  vswitch_id                 = alicloud_vswitch.alivsw-chengdu.id
  internet_max_bandwidth_out = 1
  key_name = alicloud_ecs_key_pair.publickey-chengdu.key_pair_name
}
#resource "alicloud_ecs_key_pair_attachment" "alikeypair-chengdu" {
#  provider      = alicloud.chengdu
#  key_pair_name = "my_public_key-chengdu"
#  instance_ids  = [alicloud_instance.ali-chengdu.id]
#}
resource "alicloud_instance" "ali-hongkong" {
  host_name         = "ali-hongkong"
  provider          = alicloud.hongkong
  availability_zone = data.alicloud_zones.zones_ds_hongkong.zones.0.id
  security_groups   = [alicloud_security_group.SG-hongkong.id]
  # series III
  instance_type        = data.alicloud_instance_types.insttype-hongkong.instance_types.0.id
  system_disk_category = "cloud_efficiency"
  image_id             = "aliyun_3_x64_20G_alibase_20210425.vhd"
  # host_name        = "test_foo"
  vswitch_id                 = alicloud_vswitch.alivsw-hongkong.id
  internet_max_bandwidth_out = 1
  key_name = alicloud_ecs_key_pair.publickey-hongkong.key_pair_name
}
#resource "alicloud_ecs_key_pair_attachment" "alikeypair-hongkong" {
#  provider      = alicloud.hongkong
#  key_pair_name = "my_public_key-hongkong"
#  instance_ids  = [alicloud_instance.ali-hongkong.id]
#}