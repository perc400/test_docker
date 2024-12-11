# Используем официальный образ Ubuntu в качестве базового
FROM ubuntu:20.04

# Устанавливаем Apache и необходимые утилиты
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Копируем конфигурационные файлы, если они у вас есть (опционально)
# ADD my_custom_apache_config.conf /etc/apache2/sites-available/000-default.conf

# Открываем порт 80 для доступа к Apache
EXPOSE 80

# Копируем ваш HTML файл в директорию для публичных веб-страниц Apache
ADD index.html /var/www/html/

# Команда запуска Apache в фоновом режиме
CMD ["apache2ctl", "-D", "FOREGROUND"]
