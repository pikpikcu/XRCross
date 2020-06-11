#!/bin/bash

# Color
red='\e[31m'
green='\e[32m'
blue='\e[34m'
white='\e[97m'

echo -e "${red}

            __        ___            
             )_) _   _  ) _   _   ) _ 
            / \ )_) (_ ( (_) (_) ( (  
               (_                  _) 
"
echo
# golang
echo -e "\n${red}[+]${green}Setup Golang"
export PATH=$PATH:/usr/local/go/bin
GO111MODULE=on
sleep 3
echo -e "\n${red}[+]${green}Install Golang "
sudo apt install golang -y
echo -e "${red}[+] Done Install Golang "

# [dalfox]
echo -e "\n${red}[+]${green}Install dalfox "
go get github.com/hahwul/dalfox
echo -e "${red}[+] Done Install dalfox "

# [hakcheckurl]
echo -e "\n${red}[+]${green}Install hakcheckurl "
go get github.com/hakluke/hakcheckurl
echo -e "${red}[+] Done Install hakcheckurl "

# [hakrawler]
echo -e "\n${red}[+]${green}Install hakrawler "
go get github.com/hakluke/hakrawler
echo -e "${red}[+] Done Install hakrawler "

# [Waybackurls]
echo -e "\n${red}[+]${green}Install Waybackurls "
go get github.com/tomnomnom/waybackurls
echo -e "${red}[+] Done Install Waybackurls "

# [ Gau]
echo -e "\n${red}[+]${green}Install Gau "
go get -u github.com/lc/gau
echo -e "${red}[+] Done Install Gau "

# [ Assetfinder]
echo -e "\n${red}[+]${green}Install Assetfinder "
go get -u github.com/tomnomnom/assetfinder
echo -e "${red}[+] Done Install Assetfinder "

# [Httprobe]
echo -e "\n${red}[+]${green}Install Httprobe "
go get -u github.com/tomnomnom/httprobe
echo -e "${red}[+] Done Install Httprobe "

# [qsreplace]
echo -e "\n${red}[+]${green}Install qsreplace "
go get -u github.com/tomnomnom/qsreplace
echo -e "${red}[+] Done Install qsreplace "

# [ffuf]
echo -e "\n${red}[+]${green}Install ffuf "
go get github.com/ffuf/ffuf
echo -e "${red}[+] Done Install ffuf "
echo