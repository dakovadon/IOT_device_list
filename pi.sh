#/usr/bin/bash
YESTERDAY=$(date -d "today" "+-%Y-%m-%d")
cat /cygdrive/c/Mails/Attachments/*${YESTERDAY}.csv | tr "," " " | awk '{print $8}' | sort -u > /cygdrive/c/Mails/Attachments/ips.txt
/cygdrive/c/Mails/Attachments/ping.sh  |grep -a "Ping wird"| awk '{print $5,     $6}' | tr "[[]]" " " > /cygdrive/c/Mails/Attachments/ergrasp.txt
scp /cygdrive/c/Mails/Attachments/ergrasp.txt dnsadmin@140.13.17.19:/tmp/
