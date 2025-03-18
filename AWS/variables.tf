variable "region" {
  description = "The AWS region to deploy to"
  default     = "us-west-2"
}

variable "name" {
  description = "The name of the webapp"
  default = "webapp"
}

variable "prefix" {
  description = "The prefix to apply to all resources"
  default = "acme"
}