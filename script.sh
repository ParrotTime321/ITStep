#!/bin/bash
sudo service apache2 stop
cd ~/ITStep
git pull
mv /var/www/html/index.html /var/www/html/index.txt
cp ~/ITStep/index.html /var/www/html
sudo service apache2 start
sudo service apache2 restart
