resource "yandex_compute_instance" "node" {
  count 		    = 7 
  hostname                  = var.vm[count.index]

  resources {
    cores  = 4
    memory = 8
  }

  boot_disk {
    initialize_params {
      image_id    = var.ubu
      type        = "network-hdd"
      size        = "30"
    }
  }

  network_interface {
    subnet_id  = "e9b52ba9t316fg1obroa"
    nat        = true
    ip_address = "10.132.0.10${count.index}"   
  }

  metadata = {
     user-data = "${file("meta.txt")}"
  }
}