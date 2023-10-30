  #! /bin/bash
  yum update -y
  hostnamectl set-hostname web-app
  timedatectl set-timezone Asia/Kolkata
  yum install -y httpd
  systemctl enable --now httpd
  mkdir /code
  cd /code
  wget https://www.free-css.com/assets/files/free-css-templates/download/page296/carvilla.zip
  unzip *.zip
  rm -rvf *.zip
  cd *
  cp -rvf . /var/www/html
  rm -rvf *
  systemctl restart httpd