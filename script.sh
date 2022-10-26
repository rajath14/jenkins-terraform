# !/bin/bash
yum update -y
yum install -y httpd.x86_64
yum install -y git
yum install httpd php php-mysql -y
yum install python36 python36-virtualenv python36-pip -y
pip install --upgrade pip
cd /home/ec2-user
python3 -m venv /home/ec2-user/venv
source /home/ec2-user/venv/bin/activate
pip install --upgrade pip
pip install dbt-core dbt-postgres dbt-redshift dbt-snowflake dbt-bigquery
ln -s /usr/local/bin/dbt /usr/bin/dbt
yum update -y
systemctl start httpd.service
systemctl enable httpd.service
echo “DBT has been installed in our EC2 instance, host name -> $(hostname -f).Created by USERDATA in Terraform.” (arrow_symbol) /var/www/html/index.html
