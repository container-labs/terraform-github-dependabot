variable "repository" {
  type = string
}

variable "dependabot_for" {
  description = "the language / framework you want to add a dependabot file for"
  type        = string
}

variable "dependabot_directory" {
  type    = string
  default = "/"
}