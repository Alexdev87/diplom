## Дипломный практикум в YandexCloud

## Цели:


    Зарегистрировать доменное имя (любое на ваш выбор в любой доменной зоне).
    Подготовить инфраструктуру с помощью Terraform на базе облачного провайдера YandexCloud.
    Настроить внешний Reverse Proxy на основе Nginx и LetsEncrypt.
    Настроить кластер MySQL.
    Установить WordPress.
    Развернуть Gitlab CE и Gitlab Runner.
    Настроить CI/CD для автоматического развёртывания приложения.
    Настроить мониторинг инфраструктуры с помощью стека: Prometheus, Alert Manager и Grafana.

## Этапы выполнения:
## 1. Регистрация доменного имени

```bash
Доменное имя ktstory.ru, регистратор reg.ru, домен делегирован DNS YandexCloud
```
##
![](https://github.com/Alexdev87/diplom/blob/main/domen.png)

## 2. Подготовить инфраструктуру с помощью Terraform на базе облачного провайдера YandexCloud.
```bash

   - подставляем в providers.tf данные для провайдера;
   - подставляем в meta.txt login и открытый ключ;
   - выполняем terraform apply.
```
##
![](https://github.com/Alexdev87/diplom/blob/main/yandex.png)

## 3. Настроить внешний Reverse Proxy на основе Nginx и LetsEncrypt.
```bash
Роль по установке Nginx находится в папке ansible-playbook -i ../ansible/inventory.yml ../ansible/nginx/nginx-letsencrypt.yml. Роль выполнит play по установке nginx, настройке Reverse Proxy и LetsEncrypt. Так же сгенерирует сертификаты с помощью LetsEncrypt для каждой машины, используя tasks
```
##
![](https://github.com/Alexdev87/diplom/blob/main/cert.png)

## 4.  Установка кластера MySQL
```bash
Роль по установке кластера MySQL находится в папке ansible-playbook -i ../ansible/inventory.yml ../ansible/db/db.yml

mysql> SHOW REPLICA STATUS\G;
*************************** 1. row ***************************
             Replica_IO_State: Connecting to source
                  Source_Host: 192.168.100.101
                  Source_User: wordpress
                  Source_Port: 3306
                Connect_Retry: 60
              Source_Log_File:
          Read_Source_Log_Pos: 4
               Relay_Log_File: mysql-relay-bin.000001
                Relay_Log_Pos: 4
        Relay_Source_Log_File:
           Replica_IO_Running: Connecting
          Replica_SQL_Running: Yes
              Replicate_Do_DB:
          Replicate_Ignore_DB:
           Replicate_Do_Table:
       Replicate_Ignore_Table:
      Replicate_Wild_Do_Table:
  Replicate_Wild_Ignore_Table:
                   Last_Errno: 0
                   Last_Error:
................................. 


```
## 5. Установка WordPress
```bash
Роль по установке WordPress находится в папке ansible-playbook -i ../ansible/inventory.yml ../ansible/wordpress/wordpress.yml
```
##
![](https://github.com/Alexdev87/diplom/blob/main/wp.png)

## 6. Установка Gitlab CE и Gitlab Runner
```bash
Роль по установке Gitlab CE и Gitlab Runner находится в папке ansible-playbook -i ../ansible/inventory.yml ../ansible/gitlab/gitlab.yml
```
##
![](https://github.com/Alexdev87/diplom/blob/main/gitlab.png)

```bash
Для поднятия runner нужен ключ, который можно взять из консоли gitlab, далее добавить default значения для корректной отработки роли.
```
##
![](https://github.com/Alexdev87/diplom/blob/main/runner2.png)

```bash
Для настройки пайпа необходимо прописать ssh ключ в переменные, настроить job
```
##
![](https://github.com/Alexdev87/diplom/blob/main/variable.png)

```bash
Работа пайпа по коммиту
```
##
![](https://github.com/Alexdev87/diplom/blob/main/pipelones.png)

## 7. Установка Prometheus, Alert Manager, Node Exporter и Grafana
```bash
Для grafana был использован дашборд 1860, добавлен через импорт, источник определен prometheus
```
##
![](https://github.com/Alexdev87/diplom/blob/main/grafana.png)

https://grafana.you.domain (Grafana)
##
![](https://github.com/Alexdev87/diplom/blob/main/grafana1.png)

https://prometheus.you.domain (Prometheus)
##
![](https://github.com/Alexdev87/diplom/blob/main/prometheusstart.png)
##
![](https://github.com/Alexdev87/diplom/blob/main/prometheus.png)

https://alertmanager.you.domain (Alert Manager)
##
![](https://github.com/Alexdev87/diplom/blob/main/alertmanager.png)









