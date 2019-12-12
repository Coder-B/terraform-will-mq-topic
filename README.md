# terraform-will-mq-topic

This Terraform module will create a message topic for message queue.

These types of resources are supported:
- [alicloud_ons_topic](https://www.terraform.io/docs/providers/alicloud/r/ons_topic.html)

## Usage

you may run this demo below
```
module "mq-topic" {
  source  = "Coder-B/mq-topic/will"
  version = "0.0.1"
  instance_id = "${write an existed MQ instance id}"
  topic = "awesome-topic"
  message_type = 0
  remark = "this is an awesome topic"
  access_key = "${write your access key here}"
  secret_key = "${write your secret key here}"
}
```

**Conditional creation**
This example supports using existing MQ instance to create MQ topic conditionally.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|instance_id |ID of the ONS Instance that owns the topics| string| "" | yes|
|topic |Name of the topic. Two topics on a single instance cannot have the same name and the name cannot start with 'GID' or 'CID'. The length cannot exceed 64 characters| string| "" | yes|
|message_type |The type of the message. Read Ons Topic Create for further details| int| 0 | yes|
|remark |This attribute is a concise description of topic. The length cannot exceed 128.| string| "" | no|
|access_key|user access key| string| "" | yes|
|secret_key|user secret key| string| "" | yes|

## Outputs

| Name | Description |
|------|-------------|
|id|The key of the resource supplied above. The value is formulated as \<instance_id\>:\<topic\>|