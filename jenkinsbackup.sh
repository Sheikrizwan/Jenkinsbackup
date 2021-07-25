#!/bin/bash
cd /var/lib/jenkins
ls -a | grep -w .git

if [ $? -ne 0 ];then
git init
fi



git add *
git commit -m "jenkins backup"

git push https://github.com/Sheikrizwan/Jenkinsbackup.git master
if [ $? -eq 0 ];then
sendmail -s "sucss" abc@gmail.com
else
sendmail -s "fail" abc@gmail.com
fi

