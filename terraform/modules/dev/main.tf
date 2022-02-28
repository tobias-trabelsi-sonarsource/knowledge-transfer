module "instances" {
  source              = "../modules/instances"
  ENV                 = "dev"
  USER                = var.USER
  PATH_TO_PUBLIC_KEY  = var.PATH_TO_PUBLIC_KEY
}

