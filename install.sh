#!/bin/bash

# Color
red='\e[31m'
green='\e[32m'
blue='\e[34m'
white='\e[97m'

echo -e "${red}

      oo_____oo_ooooooo______oooo_________________________________
      _oo___oo__oo____oo___oo____oo_oo_ooo___ooooo___oooo___oooo__
      __oo_oo___oo____oo__oo________ooo___o_oo___oo_oo___o_oo___o_
      ___ooo____ooooooo___oo________oo______oo___oo___oo_____oo___
      __oo_oo___oo____oo___oo____oo_oo______oo___oo_o___oo_o___oo_
      _oo___oo__oo_____oo____oooo___oo_______ooooo___oooo___oooo__
      ____________________________________________________________ 

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
# [subfinder]
echo -e "\n${red}[+]${green}Install subfinder "
go get -v github.com/projectdiscovery/subfinder/cmd/subfinder
echo -e "${red}[+] Done Install subfinder"
# [cors]
echo -e "\n${red}[+]${green}Install CORS-Scanner "
go get -u github.com/Tanmay-N/CORS-Scanner
echo -e "${red}[+] Done Install CORS-Scanner"
# [gf]
echo -e "\n${red}[+]${green}Install gf "
go get -u github.com/tomnomnom/gf
echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.zsh' >> ~/.zshrc
cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf
echo -e "${red}[+] Done Install gf"
echo -e "\n${red}[+]${green}Install Gf-Patterns"
git clone https://github.com/1ndianl33t/Gf-Patterns
mv Gf-Patterns/*.json ~/.gf
rm -rf Gf-Patterns
echo -e "${red}[+] Done Install Gf-Patterns"
echo -e "\n${red}[+]${green}Install httpx"
GO111MODULE=on go get -u -v github.com/projectdiscovery/httpx/cmd/httpx
echo -e "${red}[+] Done Install httpxs"
echo -e "\n${red}[+]${green}Install jq"
sudo apt install jq -y
echo -e "${red}[+] Done Install httpxs"






