#!/bin/sh

sudo mysql < fix.sql
sudo mysql < creatdb.sql 

rm /var/www/html/WebGoat/DB_Scripts/load_webgoatcoins.sql
cp load_webgoatcoins.sql /var/www/html/WebGoat/DB_Scripts/load_webgoatcoins.sql

cd /var/www/html/WebGoat/DB_Scripts/
sudo mysql < load_webgoatcoins.sql 
