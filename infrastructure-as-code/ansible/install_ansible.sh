#!/bin/bash

# Update package list and install dependencies
sudo apt-get update
sudo apt-get install -y software-properties-common

# Add Ansible PPA and install Ansible
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt-get install -y ansible

# Verify Ansible installation
ansible --version