#!/bin/bash
#add fix to exercise5-server1 here
Step1
Create your SSH key pair on server1 machine

$ssh-keygen -t rsa

result:Last login: Sat Aug 25 17:56:59 2018 from 10.0.2.2
vagrant@server2:~$ ssh-keygen -t rsa
Generating public/private rsa key pair.
Enter file in which to save the key (/home/vagrant/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/vagrant/.ssh/id_rsa.
Your public key has been saved in /home/vagrant/.ssh/id_rsa.pub.
The key fingerprint is:
03:fe:76:f2:12:92:af:75:26:15:1c:99:76:28:b1:d2 vagrant@server2
The key's randomart image is:
+--[ RSA 2048]----+
|        ...+     |
|       ..o=..    |
|      o Eoo.     |
|     . o   .     |
|      ..S .      |
|      o..o       |
|       o*.+      |
|       ooB       |
|      .. ..      |
+-----------------+


Step2
Authorizing the server to trust itself
$cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys

Step3
copy id_rsa.pub key on server2

$ssh vagrant@server2 "mkdir ~/.ssh"
$cat .ssh/id_rsa.pub | ssh vagrant@server2 'cat >> .ssh/authorized_keys'
$ssh vagrant@server2 "chmod 700 .ssh; chmod 640 .ssh/authorized_keys"

DONE! 


