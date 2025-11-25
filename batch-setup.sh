#!/bin/bash/

sudo apt update && sudo apt upgrade -y
sudo apt install apache2 -y
sudo a2enmod rewrite headers
sudo systemctl restart apache2


sudo apt install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update


sudo apt install php8.2 php8.2-common php8.2-cli php8.2-fpm \
php8.2-mysql php8.2-xml php8.2-mbstring php8.2-gd php8.2-curl \
php8.2-zip php8.2-bcmath php8.2-intl -y


sudo systemctl restart apache2

cd /usr/local/bin
sudo curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer --version


sudo mkdir -p /var/www/laravel
sudo chown -R $USER:$USER /var/www/laravel
cd /var/www/laravel

git clone https://github.com/luabikoye/laravel-task-list.git


composer install --no-dev --optimize-autoloader

cp .env.example .env

#Find and replace variables in .env file
sudo sed -i \
-e 's/^DB_PORT=.*/DB_PORT=3306/' \
-e 's/^DB_DATABASE=.*/DB_DATABASE=task_list/' \
-e 's/^DB_USERNAME=.*/DB_USERNAME=task_list/' \
-e 's/^DB_PASSWORD=.*/DB_PASSWORD=ICSLimited@2024/' \
.env


#Generate Virtual Host file

cat <<EOF | sudo tee /etc/apache2/sites-available/laravel.conf
<VirtualHost *:80>
    ServerName yourdomain.com
    ServerAlias www.yourdomain.com
    DocumentRoot /var/www/laravel/public

    <Directory /var/www/laravel/public>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

    <FilesMatch \.php$>
        SetHandler "proxy:unix:/run/php/php8.2-fpm.sock|fcgi://localhost/"
    </FilesMatch>

    ErrorLog \${APACHE_LOG_DIR}/laravel-error.log
    CustomLog \${APACHE_LOG_DIR}/laravel-access.log combined
</VirtualHost>
EOF

#Enable the site
sudo a2ensite laravel.conf
sudo a2dissite 000-default.conf
sudo systemctl reload apache2

#Make sure .htaccess works:
sudo a2enmod rewrite
sudo systemctl restart apache2

sudo mv /var/www/html/laravel/public/_htaccess /var/www/html/laravel/public/.htaccess

php artisan key:generate


sudo chown -R www-data:www-data /var/www
sudo chmod -R 775 storage bootstrap/cache


#Run Migrations & Optimize
php artisan migrate --force
php artisan optimize


#install mysql
sudo apt install mysql-server -y


#create database
sudo mysql -u root -e 'CREATE DATABASE task_list;'

#create a user 
sudo mysql -u root -e "CREATE USER 'task_list'@'localhost' IDENTIFIED BY 'ICSLimited@2024';"

#grant user all privileges to database
sudo mysql -u root -e "GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER ON task_list.* TO 'task_list'@'localhost';"
sudo mysql -u root -e 'FLUSH PRIVILEGES;'

#import database from project folder

sudo mysql -u root laravel-10-task-list < /var/www/html/db/laravel-10-task-list.sql


# sudo apt install certbot python3-certbot-apache -y
# sudo certbot --apache -d yourdomain.com -d www.yourdomain.com