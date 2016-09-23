#!/bin/bash
printf "CAPA\nQUIT\n" | /usr/bin/openssl s_client -starttls pop3 -crlf -connect [$HM_SRV_IPADDR]:$HM_SRV_PORT 2>/dev/null -ign_eof | grep "+OK QUIT" >/dev/null
check=$?
#  echo "$HM_SRV_IPADDR:$HM_SRV_PORT returned: $check"

if test $check == 0 ; then      
#   echo "UP"  
 exit 0       
else        
 exit 1       
fi
