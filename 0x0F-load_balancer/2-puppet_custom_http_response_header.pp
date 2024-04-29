#Automation of the creation of custom HTTP header response with puppet
exec { 'command':
  command  => 'apt-get update -y;
  apt-get -y install nginx;
  sudo sed -i "listen 80 default_server;/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default;
  sudo service nginx restart',
  provider => shell,
}
