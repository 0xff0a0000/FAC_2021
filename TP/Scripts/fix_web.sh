#!/bin/sh

sudo mysql < fix.sql

rm /var/www/html/WebGoat/DB_Scripts/load_webgoatcoins.sql
cp load_webgoatcoins.sql /var/www/html/WebGoat/DB_Scripts/load_webgoatcoins.sql
