sudo /etc/init.d/nginx start
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

sudo gunicorn --bind='0.0.0.0:8080' web.hello:app

#sudo /etc/init.d/mysql start