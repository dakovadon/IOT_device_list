for ip in $(cat /cygdrive/c/Mails/Attachments/ips.txt); do
ping -a -n 1 $ip
done
