# alicloud_ons_topic

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|instance_id |ID of the ONS Instance that owns the topics| string| "" | yes|
|topic |Name of the topic. Two topics on a single instance cannot have the same name and the name cannot start with 'GID' or 'CID'. The length cannot exceed 64 characters| string| "" | yes|
|message_type |The type of the message. Read Ons Topic Create for further details| int| 0 | yes|
|remark |This attribute is a concise description of topic. The length cannot exceed 128.| string| "" | no|

## Outputs

| Name | Description |
|------|-------------|
|id|The key of the resource supplied above. The value is formulated as \<instance_id\>:\<topic\>|