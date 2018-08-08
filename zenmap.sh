#! /bin/bash
#
#
#Limpar a tela
clear
#
#
#Escrever zenmap
figlet Zenmap
#
#BANNER
echo
echo "+++++++++++++++++++++++++++++++++"
echo "+           BEM-VINDO           +"
echo "+              AO               +"
echo "+            ZENMAP             +"
echo "+                               +"
echo "+++++++++++++++2018++++++++++++++"
echo
#
#
#
#MENU
echo
echo "=================================="
echo "= \033[1;34m[\033[1;31m1]>> \033[1;33mInstalar nmap"
echo "= \033[1;34m[\033[1;31m2]>> \033[1;33mRealizar um scanner"
echo "= \033[1;34m[\033[1;31m3]>> \033[1;33mSair"
echo "=================================="
echo
#
#Escolher entre 1,2 e 3
read -p "[+]>>" opcao
#
#
#
if [ "$opcao" = "1" ];then
clear
figlet INSTALL
pkg install nmap
clear
fi
if [ "$opcao" = "2" ];then
clear
figlet Scans
#
#MENU
echo "Escolha o tipo de scan que voce quer usar"
echo
echo "\033[1;34m[\033[1;31m1]>> \033[1;33mIntense scan"
echo "\033[1;34m[\033[1;31m2]>> \033[1;33mIntense scan plus UDP"
echo "\033[1;34m[\033[1;31m3]>> \033[1;33mIntense scan, all TCP ports"
echo "\033[1;34m[\033[1;31m4]>> \033[1;33mIntense scan, no ping"
echo "\033[1;34m[\033[1;31m5]>> \033[1;33mPing scan"
echo "\033[1;34m[\033[1;31m6]>> \033[1;33mQuick scan"
echo "\033[1;34m[\033[1;31m7]>> \033[1;33mQuick scan plus"
echo "\033[1;34m[\033[1;31m8]>> \033[1;33mQuick traceroute"
echo "\033[1;34m[\033[1;31m9]>> \033[1;33mRegular scan"
echo "\033[1;34m[\033[1;31m10]>> \033[1;33mSlow comprehensive scan"
echo
#
#Escolher entre 1,2,3,4,5,6,7,8,9 ou 10
#
read -p "[+]>>" scan
fi
if [ "$scan" = "1" ];then
clear
figlet Scan
#
 echo "\033[1;32m\n\n[+]=>DIGITE O IP OU SITE ALVO"
read -p "[+]=>" ip
#
nmap -T4 -A -v $ip
#
#
fi
if [ "$scan" = "2" ];then
clear
figlet scan
 echo "\033[1;32m\n\n[+]=>DIGITE O IP OU SITE ALVO!"
echo
read -p "[+]>>" ip
echo
nmap -sS -sU -T4 -A -v $ip
fi
if [ "$scan" = "3" ];then
 echo "\033[1;32m\n\n[+]=>DIGITE O IP OU SITE ALVO!"
echo
read -p "[+]>>" ip
echo
clear
figlet Scan
echo
nmap -p 1-65535 -T4 -A -v $ip
#
fi
if [ "$scan" = "4" ];then
echo
 echo "\033[1;32m\n\n[+]=>DIGITE O IP OU SITE ALVO!"
echo
read -p "[+]>>" ip
echo
clear
figlet Scan
echo
nmap -T4 -A -v -Pn $ip
echo
fi
if [ "$scan" = "5" ];then
echo
 echo "\033[1;32m\n\n[+]=>DIGITE O IP OU SITE ALVO!"
echo
read -p "[+]>>" ip
echo
clear
figlet Scan
echo
nmap -sn $ip
#
fi
if [ "$scan" = "6" ];then
echo
 echo "\033[1;32m\n\n[+]=>DIGITE O IP OU SITE ALVO!"
echo
read -p "[+]=>" ip
echo
clear
figlet Scan
echo
nmap -T4 -F $ip
echo
#
fi
if [ "$scan" = "7" ];then
echo
 echo "\033[1;32m\n\n[+]=>DIGITE O IP OU SITE ALVO!"
echo
read -p "[+]=>" ip
clear
figlet Scan
echo
nmap -sV -T4 -O -F --version-light $ip
echo
fi
if [ "$scan" = "8" ];then
echo
 echo "\033[1;32m\n\n[+]=>DIGITE O IP OU SITE ALVO!"
echo
read -p "[+]=>" ip
clear
figlet Scan
echo
nmap -sn --traceroute $ip
echo
fi
if [ "$scan" = "9" ];then
echo
 echo "\033[1;32m\n\n[+]=>DIGITE O IP OU SITE ALVO!"
echo
read -p "[+]=>" ip
echo
clear
figlet scan
echo
nmap $ip
echo
fi
if [ "$scan" = "10" ];then
echo
 echo "\033[1;32m\n\n[+]=>DIGITE O IP OU SITE ALVO!"
echo
read -p "[+]>>" ip
echo
clear
figlet Scan
nmap -s-S -sU -T4 -A -v -PE -PP-PS80,443 -PA3389 -PU40125 -PY -g 53 --script  $ip
fi
if [ "$opcao" = "3" ];then
echo
sleep 2
clear
figlet Exit
sleep 2

exit
fi
