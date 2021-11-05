sudo /etc/init.d/nginx start
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart


sudo ln -s /home/box/web/etc/hello.py   /etc/gunicorn.d/hello.py
sudo gunicorn /home/box/web/hello
#sudo /etc/init.d/gunicorn restart
#sudo /etc/init.d/mysql start