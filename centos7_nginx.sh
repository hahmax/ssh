echo '[nginx-stable]
name=nginx stable repo
baseurl=http://nginx.org/packages/centos/7/$basearch/
gpgcheck=1
enabled=1
gpgkey=https://nginx.org/keys/nginx_signing.key

[nginx-mainline]
name=nginx mainline repo
baseurl=http://nginx.org/packages/mainline/centos/7/$basearch/
gpgcheck=1
enabled=0
gpgkey=https://nginx.org/keys/nginx_signing.key' > /etc/yum.repos.d/nginx.repo
# cat /etc/yum.repos.d/nginx.repo

yum install nginx -y
systemctl enable nginx.service
systemctl start nginx.service
