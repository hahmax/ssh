rpm -ivh https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
yum-config-manager --disable mysql80-community
yum-config-manager --enable mysql57-community
# yum repolist enabled | grep mysql

yum install mysql-community-server -y
systemctl enable mysqld
systemctl start mysqld
#systemctl status mysqld

# set password
grep 'temporary password' /var/log/mysqld.log
mysql -uroot -p
ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password!';
