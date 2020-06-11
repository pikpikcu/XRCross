## RecTools (Recon)

>

                        _  .-')     ('-.             .-') _                                       .-')   
                        ( \( -O )  _(  OO)           (  OO) )                                      ( OO ). 
                        ,------. (,------.   .-----./     '._  .-'),-----.  .-'),-----.  ,--.     (_)---\_)       
                        |   /`. ' |  .---'  '  .--./|'--...__)( OO'  .-.  '( OO'  .-.  ' |  |.-') /    _ |   
                        |  /  | | |  |      |  |('-.'--.  .--'/   |  | |  |/   |  | |  | |  | OO )\  :` `.
                        |  |_.' |(|  '--.  /_) |OO  )  |  |   \_) |  |\|  |\_) |  |\|  | |  |`-' |'..`''.)  
                        |  .  '.' |  .--'  ||  |`-'|   |  |     \ |  | |  |  \ |  | |  |(|  '---.'.-._)   \
                        |  |\  \  |  `---.(_'  '--'\   |  |      `'  '-'  '   `'  '-'  ' |      | \       /  
                        `--' '--' `------'   `-----'   `--'        `-----'      `-----'  `------'  `-----'  
                            

</a>
<h4 align="center">Details</h4>                
<p align="center">
  </a>
  <a href="https://ru.m.wikipedia.org/wiki/bash">
    <img src="https://img.shields.io/badge/language-bash-green.svg">
 </a>
  <a href="https://github.com/pikpikcu/RecTools">
    <img src="https://img.shields.io/badge/version-V1.0-green.svg">
 </a>
   <a href="https://github.com/pikpikcu/RecTools/blob/master/LICENSE">
   <img src="https://img.shields.io/badge/LICENSE-red.svg">
   </a>
 </a>
</p>


### About RecTools 

    RecTools is a Reconstruction, Scanner, and a tool for penetration / BugBounty testing. This tool was built to test XSS / SSRF vulnerabilities 

#### ✔️ ***Example***:

>   

        Example: RecTools -u/--url example.site
                 RecTools <arguments> example.site <arguments> 

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

#### ✔️ ***How to install RecTools***:

> root@kali~# git clone https://github.com/pikpikcu/RecTools.git

> root@kali~# ./install.sh

> root@kali~# ./rectools.sh -h


 Credits Thanks:
------------

* [dalfox](https://github.com/hahwul/dalfox)
* [hakcheckurl](https://github.com/hakluke/hakcheckurl)
* [waybackurls](https://github.com/tomnomnom/waybackurls)
* [lc](https://github.com/lc/gau)
* [ffuf](https://github.com/ffuf/ffuf)
