

sudo /etc/init.d/gunicorn web.hello:myapp
sudo ln -s /home/box/web/etc/hello.py   /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn reload

sudo /etc/init.d/nginx start
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
#sudo /etc/init.d/mysql start