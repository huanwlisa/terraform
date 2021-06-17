output "ssh-key-name-qingdao" {
    value = alicloud_ecs_key_pair.publickey-qingdao.key_pair_name
}
output "pubip-qingdao" {
    value = alicloud_instance.ali-qingdao.public_ip
}
output "priip-qingdao" {
    value = alicloud_instance.ali-qingdao.private_ip
}