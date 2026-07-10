output "vm_name" {
  value = google_compute_instance.my_vm.name
}

output "external_ip" {
  value = google_compute_instance.my_vm.network_interface[0].access_config[0].nat_ip
}