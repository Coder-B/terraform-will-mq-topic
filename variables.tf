variable "instance_id" {
  description = "ID of the ONS Instance that owns the topics."
}

variable "topic" {
  description = "Name of the topic."
}

variable "message_type" {
  description = "The type of the message."
  default = 0
}

variable "remark" {
  description = "This attribute is a concise description of topic."
  default = "This is a topic"
}

variable "region" {
  description = "The region used to launch this module resources."
  default     = ""
}