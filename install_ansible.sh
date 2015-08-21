#!/bin/sh
git clone git://github.com/ansible/ansible.git --recursive
source ./ansible/hacking/env-setup -q
echo -e "\nsource ./ansible/hacking/env-setup -q" >> .bashrc
easy_install pip
pip install paramiko PyYAML Jinja2 httplib2 six pexpect
echo "# Ansible Inventory" > inventory
echo "[headnode]" >> inventory
echo "localhost ansible_connection=local" >> inventory
mkdir /etc/ansible
mv inventory /etc/ansible/hosts
./ansible/bin/ansible headnode -a "/bin/hostname"
