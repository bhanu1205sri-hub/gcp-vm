resource "google_compute_instance" "my_vm" {
  name         = "terraform-vm"
  machine_type = "e2-micro"
  zone         = "asia-south1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }

  tags = ["http-server", "https-server"]
}