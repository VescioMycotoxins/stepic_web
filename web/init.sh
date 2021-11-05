sudo /etc/init.d/nginx start
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/hello.py   /etc/gunicorn.d/hello.py
sudo -c cd web
sudo gunicorn hello:myapp

#sudo /etc/init.d/mysql start