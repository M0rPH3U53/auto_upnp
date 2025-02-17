#!/bin/bash

BLEU='\e[34m'
RESET='\033[0m'
BLANC='\033[1;37m'

msf_upnp () {

    echo "Port defaut: 1900,5000-5001,2869"
    
    echo -ne "${BLEU}[i]${RESET} ${BLANC}IP:${RESET} "
    read  IP
    
    echo -ne "${BLEU}[i]${RESET} ${BLANC}Port UPNP:${RESET} " 
    read Port
    
    msfconsole -q -x "use auxiliary/scanner/upnp/ssdp_msearch; set RHOSTS ${IP}; set RPORT ${PORT};set verbose true; run; exit"
}

msf_upnp
