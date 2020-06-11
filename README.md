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
    <img src="https://img.shields.io/badge/version-V1.0-green.svg">
 </a>
   <a href="https://github.com/pikpikcu/xrcross/blob/master/LICENSE">
   <img src="https://img.shields.io/badge/LICENSE-red.svg">
   </a>
 </a>
</p>


### About XRCross 

    XRCross is a Reconstruction, Scanner, and a tool for penetration / BugBounty testing. 
    This tool was built to test XSS / SSRF vulnerabilities 

#### ✔️ ***Example***:

>   

        Example: XRCross -u/--url example.site
                 XRCross <arguments> example.site <arguments> 

        Optional Arguments:
            -s  --subdo    Check Subdomains 
            -H  --host     Host Live Check
            -sw --scrw     Scraping wayback for data
                        -js  Jsurls 
                        -php Phpurls
                        -asp ASP
                        -html Html
            -D  --dir      Check Dir Status Response
            -r  --redirec  Check open redirection
            -Ss --ssrf     Blind SSRF testing
            -xs --xss      Check Parameter XSS
            -o             Outfile

#### ✔️ ***How to install XRCross***:

> root@kali~# git clone https://github.com/pikpikcu/XRCross.git

> root@kali~# ./install.sh

> root@kali~# ./XRCross -h


 Credits Thanks:
------------

* [dalfox](https://github.com/hahwul/dalfox)
* [hakcheckurl](https://github.com/hakluke/hakcheckurl)
* [waybackurls](https://github.com/tomnomnom/waybackurls)
* [lc](https://github.com/lc/gau)
* [ffuf](https://github.com/ffuf/ffuf)
