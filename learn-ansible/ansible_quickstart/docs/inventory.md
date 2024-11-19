# Ansible Inventory

## What is Ansible inventory?

Inventory file is a collection of managed nodes which yo are going to control. The hosts or nodes are organised in specific groups to handle the operaion smoothly.

Inventory file can be saved in **.ini** and **.yaml** format. But **yaml** format is more robust for handling large number of hosts. [Ansible Inventory Docs](https://docs.ansible.com/ansible/latest/getting_started/get_started_inventory.html).



### Inventory in INI format

```
[group_name]
ip_address_of_host1
ip_address_of_host2
fqdn_of_host3
fqdn_of_host4
```
### Inventory in YAML format

```
group_name_of_hosts:
  hosts:
    host-01:
      ansible_host: host1.local
    host-01:
      ansible_host: 192.168.1.5

  vars:
    ansible_user: admin
```

The goup names must be seperated with underscore only.

You can list the inventory items using command -

`ansible-inventory -i inventory.yaml --list`.

## How to test Ansible with adhoc commands?

Basically to manage nodes Ansible playbooks are used. But you can test Ansible with some adhoc commands as below - 

`ansible group_name_of_hosts -i inventory.yaml -m ping`

In above command - 
- ansible - is the command
- group_name_of_hosts - is the group name given in inventory file
- -i inventory.yaml - specify the inventory file to be used
- -m - Ansible module indicator
- ping - Ansible module to ping hosts

Now, if the ssh configuration is working ok with remote system, ansible will ping the remote system using ansible adhoc command and output is displayed on the screen.
