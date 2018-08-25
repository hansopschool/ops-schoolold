#!/bin/bash
#add fix to exercise5-server2 here
Step1
Create your SSH key pair on server1 machine

$ssh-keygen -t rsa

Step2
Authorizing the server to trust itself
$cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys

Step3
copy id_rsa.pub key on server2

$ssh vagrant@server2 "mkdir ~/.ssh"
$cat .ssh/id_rsa.pub | ssh vagrant@server2 'cat >> .ssh/authorized_keys'
$ssh vagrant@server2 "chmod 700 .ssh; chmod 640 .ssh/authorized_keys"

DONE! 
