# Network
resource "yandex_vpc_network" "default" {
  name = "net"
}

resource "yandex_vpc_subnet" "public-subnet" {
  name = "public-subnet"
  zone           = "ru-central1-a"
  network_id     = "e9b52ba9t316fg1obroa"
  v4_cidr_blocks = ["10.132.0.0/24"]
}


