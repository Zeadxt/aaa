#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`

# // Root Checking
if [ "${EUID}" -ne 0 ]; then
		echo -e "${EROR} Please Run This Script As Root User !"
		exit 1
fi
clear


# // Exporting Language to UTF-8
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
BIRed='\033[1;91m'
red='\e[1;31m'
bo='\e[1m'
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
purple() { echo -e "\\033[35;1m${*}\\033[0m"; }
tyblue() { echo -e "\\033[36;1m${*}\\033[0m"; }
yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
# // Export Banner Status Information
export EROR="[${RED} ERROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# // Exporting URL Host
export Server_URL="raw.githubusercontent.com/Zeadxt/aaa/main"
export Server_URL2="raw.githubusercontent.com/Zeadxt/aaa/main"
export Server1_URL="raw.githubusercontent.com/Zeastore/limit/main"
export izin="raw.githubusercontent.com/Zeadxt/izin/main"
export GitUser="Zeadxt"
export Server_Port="443"
export Server_IP="underfined"
export Script_Mode="Stable"
export Auther=".geovpn"

#IZIN SCRIPT

# // Exporting Script Version
export VERSION="1.1"
 
# // Exporint IP AddressInformation
export IP=$( curl -s https://ipinfo.io/ip/ )


# // Set Time To Jakarta / GMT +7
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# // cek old script
if [[ -r /etc/xray/domain ]]; then

echo -e "${INFO} Having Script Detected !"
echo -e "${INFO} If You Replacing Script, All Client Data On This VPS Will Be Cleanup !"
read -p "Are You Sure Wanna Replace Script ? (Y/N) " josdong
if [[ $josdong == "Y" ]]; then
clear
echo -e "${INFO} Starting Replacing Script !"
elif [[ $josdong == "y" ]]; then
clear
echo -e "${INFO} Starting Replacing Script !"
rm -rf /var/lib/scrz-prem 
elif [[ $josdong == "N" ]]; then
echo -e "${INFO} Action Canceled !"
exit 1
elif [[ $josdong == "n" ]]; then
echo -e "${INFO} Action Canceled !"
exit 1
else
echo -e "${EROR} Your Input Is Wrong !"
exit 1
fi
clear
fi
echo -e "${GREEN}Starting Installation............${NC}"
# // Go To Root Directory
cd /root/
# // Remove
apt-get remove --purge nginx* -y
apt-get remove --purge nginx-common* -y
apt-get remove --purge nginx-full* -y
apt-get remove --purge dropbear* -y
apt-get remove --purge stunnel4* -y
apt-get remove --purge apache2* -y
apt-get remove --purge ufw* -y
apt-get remove --purge firewalld* -y
apt-get remove --purge exim4* -y
apt autoremove -y

# // Update
apt update -y

# // Install Requirement Tools
apt-get --reinstall --fix-missing install -y sudo dpkg psmisc socat jq ruby wondershaper python2 tmux nmap bzip2 gzip coreutils wget screen rsyslog iftop htop net-tools zip unzip wget vim net-tools curl nano sed screen gnupg gnupg1 bc apt-transport-https build-essential gcc g++ automake make autoconf perl m4 dos2unix dropbear libreadline-dev zlib1g-dev libssl-dev dirmngr libxml-parser-perl neofetch git lsof iptables iptables-persistent
apt-get --reinstall --fix-missing install -y libreadline-dev zlib1g-dev libssl-dev python2 screen curl jq bzip2 gzip coreutils rsyslog iftop htop zip unzip net-tools sed gnupg gnupg1 bc sudo apt-transport-https build-essential dirmngr libxml-parser-perl neofetch screenfetch git lsof openssl easy-rsa fail2ban tmux vnstat dropbear libsqlite3-dev socat cron bash-completion ntpdate xz-utils sudo apt-transport-https gnupg2 gnupg1 dnsutils lsb-release chrony
gem install lolcat

# // Update & Upgrade
apt update -y
apt upgrade -y
apt dist-upgrade -y

# // Clear
clear
clear && clear && clear
clear;clear;clear

# // Folder Sistem Yang Tidak Boleh Di Hapus
mkdir -p /usr/bin
# // Remove File & Directory
rm -fr /usr/local/bin/xray
rm -fr /usr/local/bin/stunnel
rm -fr /usr/local/bin/stunnel5
rm -fr /etc/nginx
rm -fr /var/lib/scrz-prem/
rm -fr /usr/bin/xray
rm -fr /etc/xray
rm -fr /usr/local/etc/xray
# // Making Directory 
mkdir -p /etc/nginx
mkdir -p /var/lib/scrz-prem/
mkdir -p /usr/bin/xray
mkdir -p /etc/xray
mkdir -p /usr/local/etc/xray

clear
echo -e "$white\033[0;34m┌─────────────────────────────────────────┐${NC}"
echo -e "                          ⇱ INSTALL DOMAIN ⇲            "
echo -e "$white\033[0;34m└─────────────────────────────────────────┘${NC}"
echo "1. Use Domain zeaking.my.id"
echo "2. Use Your Private Domain"
echo -e "$white\033[0;34m└─────────────────────────────────────────┘${NC}"
echo -e""
read -rp "Choose Your Domain Installation : " dom 

if test $dom -eq 1; then
clear
wget -q -O /root/cf.sh "https://${Server_URL}/cf.sh"
chmod +x /root/cf.sh
./cf.sh
elif test $dom -eq 3; then
wget -q -O /root/cf1.sh "https://${Server_URL}/cf1.sh"
chmod +x /root/cf1.sh
./cf1.sh
elif test $dom -eq 2; then
read -rp "Domain/Host: " -e host
echo "IP=$host" >> /var/lib/premium-script/ipvps.conf
fi
echo -e "${GREEN}Done!${NC}"
sleep 2
clear
echo "IP=$host" >> /var/lib/scrz-prem/ipvps.conf
#echo "IP=$host" >> /var/lib/scrz-prem/ipvps.conf
echo "$host" >> /root/domain
#clear

sleep 2

#install jembot
echo -e "$white\033[0;34m┌─────────────────────────────────────────┐${NC}"
echo -e " \E[41;1;39m           ⇱ Install Perlengkapan ⇲            \E[0m$NC"
echo -e "$white\033[0;34m└─────────────────────────────────────────┘${NC}"
sleep 1 
wget -q https://${Server_URL2}/jempol.sh && chmod +x jempol.sh && ./jempol.sh
#install ssh-vpn
echo -e "$white\033[0;34m┌─────────────────────────────────────────┐${NC}"
echo -e " \E[41;1;39m          ⇱ Install SSH / WS ⇲           \E[0m$NC"
echo -e "$white\033[0;34m└─────────────────────────────────────────┘${NC}"
sleep 1
wget -q https://${Server_URL}/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
echo -e "$white\033[0;34m┌─────────────────────────────────────────┐${NC}"
echo -e " \E[41;1;39m            ⇱ Install Xray ⇲             \E[0m$NC"
echo -e "$white\033[0;34m└─────────────────────────────────────────┘${NC}"
sleep 1 
wget -q https://${Server_URL}/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh

# // Download Data
echo -e "${GREEN}Download Data${NC}"
wget -q -O /usr/bin/add-ws "https://${Server_URL}/add-ws.sh"
wget -q -O /usr/bin/add-ssws "https://${Server_URL}/add-ssws.sh"
#wget -q -O /usr/bin/add-socks "https://raw.githubusercontent.com/Zeastore/asd/main/add-socks.sh"
wget -q -O /usr/bin/add-vless "https://${Server_URL}/add-vless.sh"
wget -q -O /usr/bin/add-tr "https://${Server_URL}/add-tr.sh"
#wget -q -O /usr/bin/add-trgo "https://raw.githubusercontent.com/Zeastore/asd/main/add-trgo.sh"
wget -q -O /usr/bin/autoreboot "https://${Server_URL}/autoreboot.sh"
wget -q -O /usr/bin/restart "https://${Server_URL}/restart.sh"
wget -q -O /usr/bin/tendang "https://${Server_URL}/tendang.sh"
wget -q -O /usr/bin/clearlog "https://${Server_URL}/clearlog.sh"
wget -q -O /usr/bin/running "https://${Server_URL}/running.sh"
wget -q -O /usr/bin/cek-trafik "https://${Server_URL}/cek-trafik.sh"
wget -q -O /usr/bin/cek-speed "https://${Server_URL}/speedtes_cli.py"
wget -q -O /usr/bin/cek-bandwidth "https://${Server_URL}/cek-bandwidth.sh"
#wget -q -O /usr/bin/cek-ram "https://raw.githubusercontent.com/Zeastore/asd/main/ram.sh"
wget -q -O /usr/bin/limit-speed "https://${Server_URL}/limit-speed.sh"
wget -q -O /usr/bin/menu-vless "https://${Server_URL}/menu-vless.sh"
wget -q -O /usr/bin/menu-vmess "https://${Server_URL}/menu-vmess.sh"
#wget -q -O /usr/bin/menu-socks "https://raw.githubusercontent.com/Zeastore/asd/main/menu-socks.sh"
wget -q -O /usr/bin/menu-ss "https://${Server_URL}/menu-ss.sh"
wget -q -O /usr/bin/menu-trojan "https://${Server_URL}/menu-trojan.sh"
#wget -q -O /usr/bin/menu-trgo "https://raw.githubusercontent.com/Zeastore/asd/main/menu-trgo.sh"
wget -q -O /usr/bin/menu-ssh "https://${Server_URL}/menu-ssh.sh"
#wget -q -O /usr/bin/menu-bckp "https://raw.githubusercontent.com/Zeastore/asd/main/menu-bckp-telegram.sh"
wget -q -O /usr/bin/menu-bckp "https://${Server_URL}/menu-bckp-github.sh"
#wget -q -O /usr/bin/bckp "https://raw.githubusercontent.com/Zeastore/asd/main/bckpbot.sh"
wget -q -O /usr/bin/usernew "https://${Server_URL}/usernew.sh"
wget -q -O /usr/bin/menu "https://${Server_URL}/menu.sh"
wget -q -O /usr/bin/wbm "https://${Server_URL}/webmin.sh"
wget -q -O /usr/bin/xp "https://${Server_URL}/xp.sh"
#wget -q -O /usr/bin/update "https://raw.githubusercontent.com/Zeastore/asd/main/update.sh"
wget -q -O /usr/bin/xp-hour "https://${Server_URL}/xp-hour.sh"
wget -q -O /usr/bin/bw "https://${Server_URL}/m-bw.sh"
wget -q -O /usr/bin/trial "https://${Server_URL}/trial.sh"
#wget -q -O /usr/bin/bw "https://${Server_URL}/m-bw.sh"
wget -q -O /usr/bin/trial1 "https://${Server_URL}/trial1.sh"
wget -q -O /usr/bin/trial2 "https://${Server_URL}/trial2.sh"
wget -q -O /usr/bin/trial3 "https://${Server_URL}/trial3.sh"
wget -q -O /usr/bin/trial4 "https://${Server_URL}/trial4.sh"
chmod +x /usr/bin/bw
chmod +x /usr/bin/trial
chmod +x /usr/bin/trial1
chmod +x /usr/bin/trial2
chmod +x /usr/bin/trial3
chmod +x /usr/bin/trial4
chmod +x /usr/bin/xp-hour
chmod +x /usr/bin/add-ws
chmod +x /usr/bin/add-ssws
chmod +x /usr/bin/add-vless
chmod +x /usr/bin/add-tr
chmod +x /usr/bin/usernew
chmod +x /usr/bin/autoreboot
chmod +x /usr/bin/restart
chmod +x /usr/bin/tendang
chmod +x /usr/bin/clearlog
chmod +x /usr/bin/running
chmod +x /usr/bin/cek-trafik
chmod +x /usr/bin/cek-speed
chmod +x /usr/bin/cek-bandwidth
chmod +x /usr/bin/limit-speed
chmod +x /usr/bin/menu-vless
chmod +x /usr/bin/menu-vmess
chmod +x /usr/bin/menu-ss
chmod +x /usr/bin/menu-trojan
chmod +x /usr/bin/menu-ssh
chmod +x /usr/bin/menu-bckp
chmod +x /usr/bin/menu
#chmod +x /usr/bin/bckp
chmod +x /usr/bin/wbm
chmod +x /usr/bin/xp
#chmod +x /usr/bin/update

#cat > /etc/cron.d/re_otm <<-END
#SHELL=/bin/sh
#PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
#0 7 * * * root /sbin/reboot
#END

cat > /etc/cron.d/xp_otm <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
2 0 * * * root /usr/bin/xp
END

cat > /etc/cron.d/cl_otm <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
2 1 * * * root /usr/bin/clearlog
END

cat > /home/re_otm <<-END
7
END

service cron restart >/dev/null 2>&1
service cron reload >/dev/null 2>&1

clear
cat> /root/.profile << END
# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n || true
clear
menu
END
chmod 644 /root/.profile

if [ -f "/root/log-install.txt" ]; then
rm -fr /root/log-install.txt 
fi
if [ -f "/etc/afak.conf" ]; then
rm -fr /etc/afak.conf 
fi
if [ ! -f "/etc/log-create-user.log" ]; then
echo "Log All Account " > /etc/log-create-user.log
fi
history -c
aureb=$(cat /home/re_otm)
b=11
if [ $aureb -gt $b ]
then
gg="PM"
else
gg="AM"
fi

apt-get remove --purge nginx* -y

sleep 2

apt install nginx -y

echo "1.1" >> /home/.ver
rm -fr /root/limit
curl -sS ifconfig.me > /etc/myipvps
echo " "
echo "=====================-[ ZEAKING TUNNELING ]-===================="
echo ""
echo "------------------------------------------------------------"
echo ""
echo ""
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - SSH Websocket           : 80" | tee -a log-install.txt
echo "   - SSH SSL Websocket       : 443" | tee -a log-install.txt
echo "   - Stunnel5                : 447, 777" | tee -a log-install.txt
echo "   - Dropbear                : 109, 143" | tee -a log-install.txt
echo "   - Badvpn                  : 7100-7300" | tee -a log-install.txt
echo "   - Nginx                   : 81" | tee -a log-install.txt
echo "   - XRAY  Vmess TLS         : 443" | tee -a log-install.txt
echo "   - XRAY  Vmess None TLS    : 80" | tee -a log-install.txt
echo "   - XRAY  Vless TLS         : 443" | tee -a log-install.txt
echo "   - XRAY  Vless None TLS    : 80" | tee -a log-install.txt
echo "   - Trojan GRPC             : 443" | tee -a log-install.txt
echo "   - Trojan WS               : 443" | tee -a log-install.txt
echo "   - Trojan GO               : 443" | tee -a log-install.txt
echo "   - Sodosok WS/GRPC         : 443" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot Off          : $aureb:00 $gg GMT +7" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - AutoKill Multi Login User" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Fully automatic script" | tee -a log-install.txt
echo "   - VPS settings" | tee -a log-install.txt
echo "   - Admin Control" | tee -a log-install.txt
echo "   - Change port" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo ""
echo ""
echo "------------------------------------------------------------"
echo ""
echo "===============-[ SCRIPT MOD By ZEAKING TUNNELING ]-==============="
echo -e ""
echo ""
echo "" | tee -a log-install.txt
rm -fr /root/weleh.sh 
rm -fr /root/jembot.sh 
rm -fr /root/ssh-vpn.sh
rm -fr /root/ins-xray.sh
rm -fr /root/setup.sh
rm -fr /root/cf.sh
rm -fr /root/cf1.sh
rm -fr /root/cf2.sh
history -c

#echo -ne "[ ${yell}WARNING${NC} ] Do You Need Reboot Now ? (y/n)? "
#read answer
#if [ "$answer" == "${answer#[Yy]}" ] ;then
#reboot
#else
#exit 0

echo -ne "${BIRed}VPS REBOOT IN 5 SECOND${NC}"
sleep 5
reboot
