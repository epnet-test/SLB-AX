#!/bin/bash
  printf ". CAPABILITY\n. LOGOUT\n" | /usr/bin/openssl s_client -crlf -connect [$HM_SRV_IPADDR]:$HM_SRV_PORT 2>/dev/null -ign_eof | grep "* BYE Microsoft Exchange Server 2013 IMAP4 server signing off" >/dev/null
  check=$?
#   echo "$HM_SRV_IPADDR:$HM_SRV_PORT returned: $check"
   
   if test $check == 0 ; then     
#    echo "UP" 
    exit 0      
   else       
    exit 1      
fi
