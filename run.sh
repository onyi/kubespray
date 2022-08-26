# Add every node listed in inventory/biocluster/hosts.yml 
ansible-playbook -i inventory/biocluster/hosts.yml --become --user ubuntu cluster.yml -vvv

# Specify SSH key 
# ansible-playbook -i inventory/biocluster/hosts.yml cluster.yml -b -v \
#   --private-key=~/.ssh/id_ed25519

# Example to delete a node from cluster
# ansible-playbook -i inventory/biocluster/hosts.yml --become --become-user=root remove-node.yml -e allow_ungraceful_removal=true --e node=mykubenode

# Example to add one more node
# ansible-playbook -i inventory/biocluster/hosts.yml --become --become-user=root scale.yml --limit=mykubenode

# Reset node
# ansible-playbook -i inventory/biocluster/hosts.yml --become --become-user=root reset.yml --limit=mykubenode