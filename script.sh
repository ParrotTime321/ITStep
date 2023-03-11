#!/bin/bash
service apache2 stop
cd ITStep/
git pull
sudo rm ~/var/www/html/index.html
sudo cp ITStep/index.html /var/www/html
service apache2 start
service apache2 restart
