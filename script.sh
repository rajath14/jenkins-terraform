#!/bin/bash
yum update -y
yum install -y git
yum install httpd php php-mysql -y
yum install python36 python36-virtualenv python36-pip -y
pip install --upgrade pip
yum install -y https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm 
amazon-linux-extras install epel -y
yum install -y mysql-community-server
pip3 install dbt-core dbt-postgres dbt-redshift dbt-snowflake dbt-bigquery
cd /home/ec2-user
python3 -m venv /home/ec2-user/venv
source /home/ec2-user/venv/bin/activate
pip3 install --upgrade pip
pip3 install dbt-core dbt-postgres dbt-redshift dbt-snowflake dbt-bigquery
ln -s /usr/local/bin/dbt /usr/bin/dbt
yum update -y
systemctl start mysqld 
systemctl enable mysqld
