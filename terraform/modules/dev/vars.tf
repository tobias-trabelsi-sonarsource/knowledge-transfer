variable "AWS_REGION" {
    default = "eu-west-1"
}

variable "AWS_SECRET_KEY" {

}

variable "AWS_ACCESS_KEY" {
  
}

variable "ENV" {
    default = "demo"
}

variable "USER" {
    type = string
    description = "Who are you"
}

variable "PATH_TO_PUBLIC_KEY" {
    description = "Path to your public key"
}