variable "AWS_REGION" {
    default = "eu-west-1"
}

variable "ENV" {
    default = "module-demo"
}

variable "USER" {
    type = string
    description = "Who are you"
}

variable "PATH_TO_PUBLIC_KEY" {
    description = "Path to your public key"
}

variable "amount" {
    default = 1
    description = "how many instances"
}