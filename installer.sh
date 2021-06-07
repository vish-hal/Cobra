#!/bin/bash

echo "checking your system and setting up the environment: "
echo ""
sudo apt-get -y update ;
sudo apt-get -y upgrade ;
sudo apt install golang;
sudo apt install python3;
sudo apt install python3-pip;
sudo apt install git;
echo "export GOPATH=$HOME/go " >> ~/.profile ;
echo "export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.profile ;
source ~/.profile ;
echo "installing your assets, please wait:)"
echo ""
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/cmd/subfinder; #1
GO111MODULE=on go get -v github.com/projectdiscovery/dnsx/cmd/dnsx #2
GO111MODULE=on go get -u -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei; #3
git clone https://github.com/projectdiscovery/nuclei-templates; #3
GO111MODULE=on go get -u -v github.com/projectdiscovery/httpx/cmd/httpx; #4
go get github.com/tomnomnom/hacks/waybackurls; #5
GO111MODULE=on go get -u -v github.com/lc/gau; #6
GO111MODULE=on go get -v github.com/projectdiscovery/naabu/v2/cmd/naabu; #7
go get github.com/michenriksen/aquatone #8
go get github.com/hakluke/hakrawler; #9
go get -u github.com/ffuf/ffuf; #10
git clone https://github.com/maurosoria/dirsearch #11
go get -v github.com/OWASP/Amass/v3/...; #12
GO111MODULE=on go get -u -v github.com/hahwul/dalfox; #13
git clone https://github.com/findomain/findomain.git; #14
git clone https://github.com/s0md3v/Arjun;  #15
git clone https://github.com/GerbenJavado/LinkFinder; #16
git clone https://github.com/m4ll0k/SecretFinder; #17
git clone https://github.com/devanshbatham/ParamSpider; #18
git clone https://github.com/s0md3v/Corsy.git; #19
git clone https://github.com/hisxo/gitGraber.git; #20
git clone https://github.com/lobuhi/byp4xx.git; #21
go get github.com/haccer/subjack; #22
echo "we are ready! lets go!!"
