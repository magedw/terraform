#-----outputs.tf-----
#====================
output "Sever-Public-IP" {
  value = module.compute.server_ip
}

output "Jenkins-Public-URL" {
  value = "http://${module.compute.server_ip}:8080"
}