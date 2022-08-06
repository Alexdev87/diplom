variable "yandex_cloud_id" {
  default = "b1gu4skoikg3ts7dftXX"
}

variable "yandex_folder_id" {
  default = "b1g0h57g963j3ga4dfXX"
}

variable "cidrs" {
  type = list(string)
  default = ["10.132.0.0/24"]
}

variable "zones" {
  type = list(string)  
  default = ["ru-central1-a"]
}

variable "ubu" {
  default = "fd87tirk5i8vitv9uuo1"
}

variable "vm" {
  type = list(string)
  default = ["ktstory.ru", "db01.ktstory.ru", "db02.ktstory.ru", "app.ktstory.ru", "gitlab.ktstory.ru", "runner.ktstory.ru", "monitoring.ktstory.ru"]
}