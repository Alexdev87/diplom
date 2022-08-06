output "internal_ip_address_ktstory_ru" {
  value = "${yandex_compute_instance.node[0].network_interface.0.ip_address}"
}

output "external_ip_address_ktstory_ru" {
  value = "${yandex_compute_instance.node[0].network_interface.0.nat_ip_address}"
}

output "internal_ip_address_db01_ktstory_ru" {
  value = "${yandex_compute_instance.node[1].network_interface.0.ip_address}"
}

output "external_ip_address_db01_ktstory_ru" {
  value = "${yandex_compute_instance.node[1].network_interface.0.nat_ip_address}"
}

output "internal_ip_address_db02_ktstory_ru" {
  value = "${yandex_compute_instance.node[2].network_interface.0.ip_address}"
}

output "external_ip_address_db02_ktstory_ru" {
  value = "${yandex_compute_instance.node[2].network_interface.0.nat_ip_address}"
}

output "internal_ip_address_app_ktstory_ru" {
  value = "${yandex_compute_instance.node[3].network_interface.0.ip_address}"
}

output "external_ip_address_app_ktstory_ru" {
  value = "${yandex_compute_instance.node[3].network_interface.0.nat_ip_address}"
}

output "internal_ip_address_gitlab_ktstory_ru" {
  value = "${yandex_compute_instance.node[4].network_interface.0.ip_address}"
}

output "external_ip_address_gitlab_ktstory_ru" {
  value = "${yandex_compute_instance.node[4].network_interface.0.nat_ip_address}"
}

output "internal_ip_address_runner_ktstory_ru" {
  value = "${yandex_compute_instance.node[5].network_interface.0.ip_address}"
}

output "external_ip_address_runner_ktstory_ru" {
  value = "${yandex_compute_instance.node[5].network_interface.0.nat_ip_address}"
}

output "internal_ip_address_monitoring_ktstory_ru" {
  value = "${yandex_compute_instance.node[6].network_interface.0.ip_address}"
}

output "external_ip_address_monitoring_ktstory_ru" {
  value = "${yandex_compute_instance.node[6].network_interface.0.nat_ip_address}"
}