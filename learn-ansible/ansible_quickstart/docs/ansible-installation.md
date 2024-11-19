# Ansible Installation

## What is Ansible?

> Ansible is an open source IT automation engine that automates provisioning, configuration management, application deployment, orchestration, and many other IT processes. It is free to use, and the project benefits from the experience and intelligence of its thousands of contributors. <br> [Ansible.com](https://www.ansible.com/)



Here, I am going to follow the Ansible tutorial from [Ansible's official website](https://www.ansible.com/).

Find [Introduction to Ansible](https://docs.ansible.com/ansible/latest/getting_started/introduction.html?extIdCarryOver=true&sc_cid=701f2000001OH6uAAG) on this page, and start working ahead.

For this tutorial, I am going to use my system as Ubuntu 22.04 desktop.

## What is the basic requirement for Ansible?

Ansible requires ssh-server installed on the nodes you want to control.
Install ssh-server on the control node and managed nodes.
Control node is your system, from where you are going to control your nodes.

After installing ssh-server, your control node must tak with managed nodes with ssh without asking for password. For that, generate a ssh keys on your control node and transfer your public key to your managed nodes. Follow the steps below -

On Control node - 

1. `sudo apt update -y && sudo apt install openssh-server -y`
2. `ssh-keygen` ssh keys are saved in .ssh folder in your home folder by default.
3. `ssh-copy-id username@remotesytem` replace __username__ with **username** on the managed node and __remotesystem__ with **ip address** or **hostname** of your managed node.

**Or** you can also copy paste your public key to managed nodes using below steps -

1. `cd .ssh` On your control node go to **.ssh** folder.
2. `ls` Here you will see two files, public key and private key, public key is the key you will transfer to control nodes and private key is private, so keep it secret. The filenames would be like id_rsa and id_rsa.pub, pub extension is for public key.
3. `cat id_rsa.pub` and copy the contents 
4. `ssh username@remotesystem` Login to manage node with ssh.
5. `nano .ssh\authorized_keys` and paste the copied content in **.ssh\authorized_keys**.
6. `ssh username@remotesystem` Now if you logge on managed node with ssh without asking for password, it worked.

## Installing Ansible on Ubuntu Linux

1. `sudo apt update -y`
2. `sudo apt install ansible`
3. `ansible --version` Check your Ansible version and other details.

## Installing Ansible using Python3 PIP command

1. Install Python3 virtual environment package if not installed
    - `sudo apt update -y`
    - `sudo apt install python3-venv`
        
2. Create a Python3 virtual environment
    - `mkdir ansible_quickstart`
    - `cd ansible_quickstart`
    - `python3 -m venv .venv`

    This will create a Python3 virtual environment in **ansible_quickstart\.venv** folder.
    Now to use this Python3 virtual environment, activate it using following command - 

    - `source .venv\bin\activate` You will see (.venv) is added at start of your command line, means your Python3 virtual environment is actiavted properly.

3. `pip install ansible` Install Ansible in Python3 virtual environment.

4. `ansible --version` Check your Ansible version and other details.

And in this way, you can install Ansible on your Linux system as well as Python3 PIP installation. 