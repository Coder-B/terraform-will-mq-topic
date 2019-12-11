resource "alicloud_ons_topic" "aTopic" {
    topic = var.topic
    instance_id = var.instance_id
    message_type = var.message_type
    remark = var.remark
}