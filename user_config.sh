#!bin/sh

echo "[step1]:Add root user:xhy..."
text='xhy:x:0:0:root:/root:/bin/bash'
sed -i "1a ${text}" /etc/passwd
passwd xhy

echo "[step2]:Add ssh user:xhyssh..."
useradd -d /home/xhyssh -m xhyssh -s /bin/sh
passwd xhyssh
chmod u+w /etc/sudoers
text='xhyssh  ALL=(ALL) ALL'
sed -i "100a ${text}" /etc/sudoers

echo "[step3]:configure ssh"
text='Port 65447'
sed -i "17a ${text}" /etc/ssh/sshd_config
text='PermitRootLogin no'
sed -i "38c ${text}" /etc/ssh/sshd_config
text='#user_config'
sed -i "140a ${text}" /etc/ssh/sshd_config
text='AllowUsers xhyssh'
sed -i "$a ${text}" /etc/ssh/sshd_config
text='Protocol 2'
sed -i "$a ${text}" /etc/ssh/sshd_config

service sshd restart
