msf_upnp () {

    echo "Port defaut: 1900,5000-5001,2869"
    read -p "Entrer une ip: " IP
    read -p "Entrer le port UPNP: " PORT
    
    msfconsole -q -x "use auxiliary/scanner/upnp/ssdp_msearch; set RHOSTS ${IP}; set RPORT ${PORT};set verbose true; run; exit"
}

msf_upnp
