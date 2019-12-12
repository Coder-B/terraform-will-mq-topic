provider "alicloud" {
  version              = ">=1.56.0"
  access_key           = var.access_key != "" ? var.access_key : null
  secret_key           = var.secret_key != "" ? var.secret_key : null
  region               = var.region != "" ? var.region : null
  configuration_source = "terraform-will-modules/mq-topic"
}

#################
# message queue topic
#################
module "mq_topic" {
    source = "./modules/ons_topic"
    topic = var.topic
    instance_id = var.instance_id
    message_type = var.message_type
    remark = var.remark
}
