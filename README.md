## XRCross (Recon)

<h4 align="center"><img src="https://raw.githubusercontent.com/pikpikcu/xrcross/master/img/logo.png" width="300px" height="300px">

</a>
<h4 align="center">Details</h4>                
<p align="center">
  </a>
  <a href="https://ru.m.wikipedia.org/wiki/bash">
    <img src="https://img.shields.io/badge/language-bash-green.svg">
 </a>
  <a href="https://t.me/WongNdes0">
   <img src="https://img.shields.io/badge/telegram--blue.svg">
   </a>
  <a href="https://github.com/pikpikcu/xrcross">
    <img src="https://img.shields.io/badge/version-V1.7.0[Beta]-green.svg">
 </a>
   <a href="https://github.com/pikpikcu/xrcross/blob/master/LICENSE">
   <img src="https://img.shields.io/badge/LICENSE-red.svg">
   </a>
 </a>
</p>


### About XRCross 

    XRCross is a Reconstruction, Scanner, and a tool for penetration / BugBounty testing. 
    This tool was built to test (XSS|SSRF|CORS|SSTI|IDOR|RCE|LFI|SQLI) vulnerabilities 

#### ✔️ ***Options***:
>   
        Example: 
                XRCross -u/--url example.site <arguments>
                
        
        Optional Arguments:
                -h /--help          | show this help message and exit
                -u /--url           | URLs
                -a /--aws           | Amazon S3 bucket enumeration
                -p /--proxy         | URL of the proxy server (default: http://127.0.0.1:8080)
                -s /--subdo         | Check Subdomains Enumerations
                -m /--map           | Domain Mapping with dnsdumster
                -l /--live          | Check live the Subdomains for working HTTP and HTTPS servers
                -hr/--header        | Host header injection 
                -sm/--smuggling     | HTTP request smuggling 
                -t /--takeover      | Check Posible Takeover
                -cr/--cors          | CORS misconfiguration scanner
                    --flash         | Basic cors misconfig flash
                -d /--dir           | Dir enumeration
                   -w /--wordlists  | Wordlist file to use for enumeration. (default wordlists/wordlists.txt)
                -lp/--lfiparam      | Get LFI Parameters       
                    --lfiv          | LFI Check Vulnerabilty
                -st/--ssti          | Get parameter SSTI Vulnerabilty  
                    --sstiv         | Test Vulnerabilty SSTI
                -ss/--ssrf          | Get SSRF Parameters 
                    --blind         | Blind SSRF testing Vulnerabilty
                -c /--cmd           | Get Command Injection Parameter
                    --cmdv          | Command Injection Check Vulnerabilty
                -r /--redirect      | Get redirec Parameters
                    --rev           | Get Vulnerabilty Open-redirect
                -x /--xss           | Get XSS Parameters        
                    --xssv          | XSS Scanners Vulnerabilty
                -j /--jstatus       | Get Status JavaScript 
                    --jsurl         | Gathering all js urls and extract endpoints from js file

                -pr/--param         
                    --idor          | Get IDOR Parameters
                    --rce           | Get RCE Parameters
                    --sqli          | Get SQLI Parameters
                    --img           | Get img-traversal Parameters
                    --int           | Interestingparams

                -w /--wayback       | Scraping wayback for data
                    --js            | Jsurls 
                    --php           | Phpurls
                    --asp           | ASP
                    --html          | Html
                -v /--verbose       | verbose mode
                -o /--outfile       | outfile    

#### ✔️ ***How to install XRCross***:

> root@kali~# git clone https://github.com/pikpikcu/xrcross.git

> root@kali~# ./install.sh

> root@kali~# ./XRCross -h

>       
   
    Open folder config/ and edit file:
      |-> Api-github.txt <(inssert github token)
      |-> ssrf.txt <(inssert ssrf payload)
      |-> xss.ht <(inssert your.xss.ht)

#### ✔️ ***Go language dependency***:

```bash
All the dependent libraries are compiled with go version 1.14.2. So go version 1.14.2 should be installed
(strictly). Secondly, $GOPATH should be set to /root/go and it should be exported to PATH using "export PATH=$PATH:$GOROOT/bin/:$GOPATH/bin" 
and same should be present in profile or bash_profile or bashrc. XRCross checks for all the go dependencies under ~/go/bin.
```

### ✔️ ***Donate!***

(I love coffee and am very addicted to coffee:v)
<br><a href="https://www.buymeacoffee.com/pikpikcu"><img src="https://cdn.buymeacoffee.com/buttons/default-black.png" alt="Buy Me A Coffee" height="50px"></a>

### ✔️ ***Contribution & License***

You can contribute in following ways:
  - Give suggestions to make it better
  - Fix issues & submit a pull request

 Credits Thanks:
------------

* [get a word list elsewhere.](https://github.com/bitquark/dnspop/tree/master/results)
* [dalfox](https://github.com/hahwul/dalfox) By [@hahwul]
* [hakcheckurl](https://github.com/hakluke/hakcheckurl) By [@hakluke]
* [waybackurls](https://github.com/tomnomnom/waybackurls) By [@tomnomnom]
* [lc](https://github.com/lc/gau) By [@lc]
* [ffuf](https://github.com/ffuf/ffuf) By [@ffuf]
* [subfinder](https://github.com/projectdiscovery/subfinder) By [@projectdiscovery]
* [CORS-Scanner](https://github.com/Tanmay-N/CORS-Scanner) By [@Tanmay-N]
* [Gf-Patterns](https://github.com/1ndianl33t/Gf-Patterns) By [@1ndianl33t]
* [httpx](https://github.com/projectdiscovery/httpx) By [@projectdiscovery]
* [SubOver](https://github.com/Ice3man543/SubOver) By [@Ice3man543]
* [github-sub](github.com/theblackturtle/github-subs) By [@theblackturtle]
* [s3enum](https://github.com/koenrh/s3enum) By [@koenrh]
* [hinject](https://github.com/dwisiswant0) By [@dwisiswant0]
