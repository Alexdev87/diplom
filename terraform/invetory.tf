resource "local_file" "inventory" {
  content = <<-DOC
    
    [revproxy]
    ktstory.ru ansible_host=${yandex_compute_instance.mashine[0].network_interface.0.nat_ip_address} email=kit177@yandex.ru domain=ktstory.ru
    
    [db]
    db01.ktstory.ru ansible_host=${yandex_compute_instance.mashine[1].network_interface.0.nat_ip_address}
    db02.ktstory.ru ansible_host=${yandex_compute_instance.mashine[2].network_interface.0.nat_ip_address}
    [db01]
    db01.ktstory.ru ansible_host=${yandex_compute_instance.mashine[1].network_interface.0.nat_ip_address}
    [db02]
    db02.ktstory.ru ansible_host=${yandex_compute_instance.mashine[2].network_interface.0.nat_ip_address}
   
    [wordpress]
    app.ktstory.ru ansible_host=${yandex_compute_instance.mashine[3].network_interface.0.nat_ip_address} domain=ktstory.ru 
    [gitlab]
    gitlab.ktstory.ru ansible_host=${yandex_compute_instance.mashine[4].network_interface.0.nat_ip_address} domain=ktstory.ru gitlab_external_url=http://gitlab.ktstory.ru/
    [runner]
    runner.ktstory.ru ansible_host=${yandex_compute_instance.mashine[5].network_interface.0.nat_ip_address} domain=ktstory.ru  
    [monitoring]
    monitoring.ktstory.ru ansible_host=${yandex_compute_instance.mashine[6].network_interface.0.nat_ip_address} domain=ktstory.ru
    DOC

  filename = "../ansible/inventory.yml"

  depends_on = [
    yandex_compute_instance.mashine[0],
    yandex_compute_instance.mashine[1],
    yandex_compute_instance.mashine[2],
    yandex_compute_instance.mashine[3],
    yandex_compute_instance.mashine[4],
    yandex_compute_instance.mashine[5],
    yandex_compute_instance.mashine[6],
  ]
}