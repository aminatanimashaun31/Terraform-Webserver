#!/bin/bash

yum update -y

yum install nginx -y

systemctl enable nginx

systemctl start nginx

echo "

<h1>Aminat Animashaun</h1>

<h2>HUG Lagos/Ibadan Terraform Challenge</h2>

" > /usr/share/nginx/html/index.html
