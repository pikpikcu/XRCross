#!/bin/bash
# Created By pikpikcu
# Suport Me And Join Contributor:
# Email:xzhack206@gmail.com

# Color
red='\e[31m'
green='\e[32m'
blue='\e[34m'
white='\e[97m'
clear
echo -e "${red}

      oo_____oo_ooooooo______oooo_________________________________
      _oo___oo__oo____oo___oo____oo_oo_ooo___ooooo___oooo___oooo__
      __oo_oo___oo____oo__oo________ooo___o_oo___oo_oo___o_oo___o_
      ___ooo____ooooooo___oo________oo______oo___oo___oo_____oo___
      __oo_oo___oo____oo___oo____oo_oo______oo___oo_o___oo_o___oo_
      _oo___oo__oo_____oo____oooo___oo_______ooooo___oooo___oooo__
      ____________________________________________________________ 

"
echo -e "${blue}"
# golang
if [[ -z "$XRCross" ]];then
      echo "Install XRCross..."
      PS3="Select Options: "
      XRCross=("yes" "no")
      select XRCross in "${XRCross[@]}";do
            case $XRCross in
                  "yes" | "y" | "Y" | "YES")
                        echo -e "${green}[+] Checking Modules..."
                        sleep 3
                        if [ ! -f /usr/bin/go ];then
                              echo -e "\n${red}[+]${green}Install Golang "
                              sudo apt install golang -y
                              echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
                              source ~/.bashrc
                              echo "export GOPATH=$HOME/go" >> ~/.bashrc
                              source ~/.bashrc
                             #export GOROOT=/usr/local/go
                             #export GOPATH=$HOME/go
                             #export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
                             #echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
                             #echo 'GOPATH=$HOME/go' >> ~/.bash_profile
                             #echo 'PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile
                             #export PATH=$PATH:/usr/local/go/bin
                             #export PATH=$PATH:~/go/bin
                              GO111MODULE=on
                              sleep 1
                              echo -e "${red}[+] Done Install Golang "
                        elif [ ! -f ~/go/bin/subjack ]; then
                              #SubOver
                              echo -e "\n${red}[+]${green}Install subjack "
                              go get github.com/haccer/subjack
                              echo -e "${red}[+] Done Install subjack "
                        elif [ ! -f ~/go/bin/dalfox ];then
                              # [dalfox]
                              echo -e "\n${red}[+]${green}Install dalfox "
                              GO111MODULE=on go get -u -v github.com/hahwul/dalfox
                              echo -e "${red}[+] Done Install dalfox "

                        elif [ ! -f ~/go/bin/hakcheckurl ];then
                              # [hakcheckurl]
                              echo -e "\n${red}[+]${green}Install hakcheckurl "
                              go get -u github.com/hakluke/hakcheckurl
                              echo -e "${red}[+] Done Install hakcheckurl "
                        elif [ ! -f ~/go/bin/hakrawler ];then
                              # [hakrawler]
                              echo -e "\n${red}[+]${green}Install hakrawler "
                              go get -u github.com/hakluke/hakrawler
                              echo -e "${red}[+] Done Install hakrawler "
                        elif [ ! -f ~/go/bin/waybackurls ];then
                              # [Waybackurls]
                              echo -e "\n${red}[+]${green}Install Waybackurls "
                              go get -u github.com/tomnomnom/waybackurls
                              echo -e "${red}[+] Done Install Waybackurls "
                        elif [ ! -f ~/go/bin/gau ];then
                              # [ Gau]
                              echo -e "\n${red}[+]${green}Install Gau "
                              go get -u github.com/lc/gau
                              echo -e "${red}[+] Done Install Gau "
                        elif [ ! -f ~/go/bin/dirsearch ];then
                              # [ dirsearch]
                              echo -e "\n${red}[+]${green}Install dirsearch "
                              go get github.com/evilsocket/dirsearch
                              go get github.com/evilsocket/brutemachine
                              cd ~/go/src/github.com/evilsocket/dirsearch
                              make get_glide
                              make install_dependencies
                              make build
                              cd ~/go/src/github.com/evilsocket/dirsearch/build/linux_x64/
                              cp dirsearch ~/go/bin/
                              echo -e "${red}[+] Done Install dirsearch "
                        elif [ ! -f ~/go/bin/assetfinder ];then      
                              # [ Assetfinder]
                              echo -e "\n${red}[+]${green}Install Assetfinder "
                              go get -u github.com/tomnomnom/assetfinder
                              echo -e "${red}[+] Done Install Assetfinder "
                        elif [ ! -f ~/go/bin/httprobe ];then    
                              # [Httprobe]
                              echo -e "\n${red}[+]${green}Install Httprobe "
                              go get -u github.com/tomnomnom/httprobe
                              echo -e "${red}[+] Done Install Httprobe "
                        elif [ ! -f ~/go/bin/qsreplace ];then   
                              # [qsreplace]
                              echo -e "\n${red}[+]${green}Install qsreplace "
                              go get -u github.com/tomnomnom/qsreplace
                              echo -e "${red}[+] Done Install qsreplace "
                  
                        elif [ ! -f ~/go/bin/ffuf ];then  
                              # [ffuf]
                              echo -e "\n${red}[+]${green}Install ffuf "
                              go get -u github.com/ffuf/ffuf
                              echo -e "${red}[+]gf Done Install ffuf "
                  
                        elif [ ! -f ~/go/bin/subfinder ];then 
                              # [subfinder]
                              echo -e "\n${red}[+]${green}Install subfinder "
                              go get -v github.com/projectdiscovery/subfinder/cmd/subfinder
                              echo -e "${red}[+] Done Install subfinder"
                  
                        elif [ ! -f ~/go/bin/CORS-Scanner ];then 
                              # [cors]
                              echo -e "\n${red}[+]${green}Install CORS-Scanner "
                              go get -u github.com/Tanmay-N/CORS-Scanner
                              echo -e "${red}[+] Done Install CORS-Scanner"
                        
                        elif [ ! -f ~/go/bin/gf ];then 
                              # [gf]
                              echo -e "\n${red}[+]${green}Install gf "
                              go get -u github.com/tomnomnom/gf
                              echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
                              echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.zsh' >> ~/.zshrc
                              cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf
                              echo -e "${red}[+] Done Install gf"
                        
                        elif [ ! -d ~/.gf/ ];then 
                              echo -e "\n${red}[+]${green}Install Gf-Patterns"
                              git clone https://github.com/1ndianl33t/Gf-Patterns
                              mkdir -p ~/.gf/
                              mv Gf-Patterns/*.json ~/.gf
                              cp -r config/*.json ~/.gf
                              rm -rf Gf-Patterns
                              echo -e "${red}[+] Done Install Gf-Patterns"
                        
                        elif [ ! -f ~/go/bin/httpx ];then 
                              echo -e "\n${red}[+]${green}Install httpx"
                              GO111MODULE=on go get -u -v github.com/projectdiscovery/httpx/cmd/httpx
                              echo -e "${red}[+] Done Install httpx"
                        elif [ ! -f ~/go/bin/qsreplace ];then 
                              echo -e "\n${red}[+]${green}Install qsreplace"
                              go get -u github.com/tomnomnom/qsreplace
                              echo -e "${red}[+] Done Install qsreplace"
                        elif [ ! -f tools/http-smuggling-test.py  ];then 
                              echo -e "\n${red}[+]${green}Install http-smuggling-test"
                              mkdir tools && cd tools
                              wget https://raw.githubusercontent.com/belane/http-smuggling-test/master/http-smuggling-test.py
                              echo -e "${red}[+] Done Install http-smuggling-test"                
                        elif [ ! -f ~/go/bin/anti-burl ];then
                              echo -e "\n${red}[+]${green}Install anti-burl"
                              go get -u github.com/tomnomnom/hacks/anti-burl
                              echo -e "${red}[+] Done Install anti-burl"
                        elif [ ! -f ~/go/bin/hinject ];then
                              echo -e "\n${red}[+]${green}Install hinject"
                              go get -u github.com/dwisiswant0/hinject
                              echo -e "${red}[+] Done Install hinject"
                        elif [ ! -f ~/go/bin/nuclei ];then
                              echo -e "\n${red}[+]${green}Install nuclei"
                              GO111MODULE=on go get -u -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
                              echo -e "${red}[+] Done Install nuclei"
                        elif [ ! -f /usr/bin/js-beautify ];then
                              echo -e "\n${red}[+]${green}Install jsbeautifier"
                              pip install jsbeautifier
                              echo -e "${red}[+] Done Install jsbeautifier"
                        elif [ ! -f ~/go/bin/github-subs ];then
                              echo -e "\n${red}[+]${green}Install github-subs"
                              go get -u github.com/theblackturtle/github-subs
                              echo -e "${red}[+] Done Install github-subs"
                        elif [ ! -f ~/go/bin/s3enum ];then
                              echo -e "\n${red}[+]${green}Install s3enum"
                              go get -u github.com/koenrh/s3enum
                              echo -e "${red}[+] Done Install s3enum"
                        
                        else
                              echo -e "${green}\n[+] Donee Check Module.\n"
                        
                        fi
                              break
                              exit
                              ;;
                  "no" | "n" | "NO" | "N")
                              echo "Aborting installation"
                              exit 1
                              ;;   
            esac
      done
      shift
fi

