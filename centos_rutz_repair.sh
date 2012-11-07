#!/bin/sh

# Обновляем пакет с таймзонами (там должна быть актуальная московская ТЗ)
yum -y -q install tzdata ntp

# Настраиваем московскую ТЗ
mv -f /etc/localtime ~/localtime.orig
ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime

# Корректируем время вручную по одному из серверов
/etc/init.d/ntpd stop
ntpdate 0.centos.pool.ntp.org 1.centos.pool.ntp.org 2.centos.pool.ntp.org
/etc/init.d/ntpd start

# Проставляем ntpd в автозапуск (на всякий случай)
chkconfig --levels 345 ntpd on

# Устанавливаем и проверяем системное время
hwclock --systohc
hwclock

