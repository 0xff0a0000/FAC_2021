#!/bin/sh

sudo mysql < fix.sql


rm /var/www/html/WebGoat/DB_Scripts/load_webgoatcoins.sql
cp load_webgoatcoins.sql /var/www/html/WebGoat/DB_Scripts/load_webgoatcoins.sql

cd /var/www/html/WebGoat/DB_Scripts/
sudo mysql < create_webgoatcoins.sql 
sudo mysql < load_webgoatcoins.sql 
