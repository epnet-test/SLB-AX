#!/bin/bash
printf ". CAPABILITY\n. LOGOUT\n" | /usr/bin/openssl s_client -starttls imap -crlf -connect [$HM_SRV_IPADDR]:$HM_SRV_PORT 2>/dev/null -ign_eof | grep "* BYE IMAP4 server logging out" >/dev/null
check=$?
#   echo "$HM_SRV_IPADDR:$HM_SRV_PORT returned: $check"

if test $check == 0 ; then      
#    echo "UP"  
 exit 0       
else        
 exit 1       
fi
