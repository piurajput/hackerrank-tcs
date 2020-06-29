#!/bin/bash
sudo apt-get update 
sudo add-apt-repository ppa:jonathonf/python-2.7 -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install software-properties-common python-software-properties -y
sudo apt-get install python --only-upgrade -y
sudo apt-get install ansible -y;
sudo apt-get install git -y;
sudo apt-get install lynx -y;
sudo apt-get install python-setuptools -y;
sudo easy_install pip==9.0;

sudo truncate -s 0 /etc/ansible/ansible.cfg
sudo echo "[defaults]" >> /etc/ansible/ansible.cfg; 
sudo echo "inventory = /etc/ansible/hosts" >> /etc/ansible/ansible.cfg ;
sudo echo "log_path = /home/ubuntu/ansible.log" >> /etc/ansible/ansible.cfg;
sudo echo "roles_path=/etc/ansible/roles" >> /etc/ansible/ansible.cfg;
sudo echo "[privilege_escalation]" >> /etc/ansible/ansible.cfg;
sudo echo "become_method=sudo" >> /etc/ansible/ansible.cfg;
sudo echo "become_ask_pass=TRUE" >> /etc/ansible/ansible.cfg;

sudo truncate -s 0 /etc/ansible/hosts ;                                              
sudo echo "localhost ansible_connection=local" >> /etc/ansible/hosts; 

PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/opt/sonarqube/sonar-runner-2.4/bin"

cd ../../../..
cd home
sudo touch -t 8001031305 oldfile1.sh
sudo touch -t 8001031305 oldfile2.sh
sudo touch -t 8001031305 oldfile3.sh


