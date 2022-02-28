output "ssh_to_demo_host" {
  value = "ssh ubuntu@${aws_instance.demo.public_dns} -i ${var.PATH_TO_PRIVATE_KEY}"
}
