## XRCross (Recon)

<h4 align="center"><img src="https://raw.githubusercontent.com/pikpikcu/xrcross/master/logo.png" width="300px" height="300px">

</a>
<h4 align="center">Details</h4>                
<p align="center">
  </a>
  <a href="https://ru.m.wikipedia.org/wiki/bash">
    <img src="https://img.shields.io/badge/language-bash-green.svg">
 </a>
  <a href="https://github.com/pikpikcu/xrcross">
    <img src="https://img.shields.io/badge/version-V1.2-green.svg">
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

        Example: XRCross -u/--url example.site
                 XRCross <arguments> example.site <arguments> 
        
        Optional Arguments:
               -h  --help     show this help message and exit
               -s  --subdo    Check Subdomains 
               -H  --host     Host Live Check
               -sw --scrw     Scraping wayback for data
                        -js  Jsurls 
                        -php Phpurls
                        -asp ASP
                        -html Html
               -D  --dir      Check Dir Status Response
               -r  normal     Check open redirection
                        -redirec  Check redirec Parameters
               -Ss --ssrf     Blind SSRF testing
               -xs --xss      Check Parameter XSS
               -cs --cors     CORS misconfiguration scanner
               -gf            GF parameters grep
                        -ssti Check SSTI Parameters
                        -idor Check IDOR Parameters
                        -rce  Check RCE Parameters
                        -lfi  Check LFI Parameters
                        -sqli Check SQLI Parameters   
               -T --takeover  Grep takeover
               -v --verbose   Verbose status code
               -o             Outfile
               
#### ✔️ ***Example***:

>  Check Subdomains

      XRCross -s/--subdo  example.site 

>  Host Live Check

      XRCross -H/--host  example.site 

>  Scraping wayback

      XRCross -sw  example.site "(-js|-php|-asp|-html)"

>  Check Dir Status

      XRCross -D/--dir  example.site 

>  Check open redirection

      XRCross -r  example.site  "(-redirec)"

>  Blind SSRF testing

      XRCross -Ss/--ssrf  example.site  

>  Check Parameter XSS

      XRCross -xs/--xss  example.site  
     
>  CORS misconfiguration scanner

      XRCross -cs/--cors  example.site  

>  GF parameters grep

      XRCross -gf example.site "(-ssti|-idor|-rce|-lfi|-sqli)"

>  Grep takeover

      XRCross -T/--takeover  example.site 

>  Outfile

      XRCross <Arguments>  example.site  -o File_OUT/


> Verbose Status Code

      XRCross -v/--verbose  example.com 

#### ✔️ ***How to install XRCross***:

> root@kali~# git clone https://github.com/pikpikcu/xrcross.git

> root@kali~# ./install.sh

> root@kali~# ./XRCross -h


 Credits Thanks:
------------

* [dalfox](https://github.com/hahwul/dalfox)
* [hakcheckurl](https://github.com/hakluke/hakcheckurl)
* [waybackurls](https://github.com/tomnomnom/waybackurls)
* [lc](https://github.com/lc/gau)
* [ffuf](https://github.com/ffuf/ffuf)
* [subfinder](https://github.com/projectdiscovery/subfinder)
* [CORS-Scanner](https://github.com/Tanmay-N/CORS-Scanner)
* [Gf-Patterns](https://github.com/1ndianl33t/Gf-Patterns)