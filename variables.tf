variable "name" {
  type = string
}

variable "description" {
  type    = string
  default = ""
}

variable "key_name" {
  type = string
}

variable "policy" {
  type = string
}

variable "lambda_version" {
  type = string
}