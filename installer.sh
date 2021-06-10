#!/bin/bash

echo "checking your system and setting up the environment: "
echo ""
sudo apt-get -y update 
sudo apt-get -y upgrade 
sudo apt install python3
sudo apt-get install -y cargo
sudo apt-get install libpcap-dev 
sudo apt install python3-pip
sudo apt install git
pip install jsbeautifier 
sudo snap install go --classic 
echo "alias cobra='~/Cobra/Cobra.sh'" >> ~/.bashrc
echo "alias Cobra='~/Cobra/Cobra.sh'" >> ~/.bashrc
echo 'export GOPATH=$HOME/go ; ' >> ~/.bashrc 
echo 'export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin ;' >> ~/.bashrc
source ~/.bashrc
echo "installing your assets, please wait:)"
echo ""
mkdir tools
cd tools
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder; 
GO111MODULE=on go get -v github.com/projectdiscovery/dnsx/cmd/dnsx ;
GO111MODULE=on go get -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei;
nuclei -ut;
GO111MODULE=on go get -u -v github.com/projectdiscovery/httpx/cmd/httpx; 
go get github.com/tomnomnom/hacks/waybackurls; 
GO111MODULE=on go get -u -v github.com/lc/gau; 
GO111MODULE=on go get -v github.com/projectdiscovery/naabu/v2/cmd/naabu; 
go get github.com/michenriksen/aquatone 
go get github.com/hakluke/hakrawler; 
go get -u github.com/ffuf/ffuf; 
git clone https://github.com/maurosoria/dirsearch
pip3 install -r dirsearch/requirements.txt; 
go get -v github.com/OWASP/Amass/v3/...; 
GO111MODULE=on go get -u -v github.com/hahwul/dalfox; 
git clone https://github.com/findomain/findomain.git
cd findomain
cargo build --release
sudo cp target/release/findomain /usr/bin/; 
cd .. 
pip3 install arjun;  
git clone https://github.com/GerbenJavado/LinkFinder; 
git clone https://github.com/m4ll0k/SecretFinder; 
git clone https://github.com/devanshbatham/ParamSpider; 
git clone https://github.com/s0md3v/Corsy.git; 
git clone https://github.com/hisxo/gitGraber.git;
git clone https://github.com/lobuhi/byp4xx.git; 
go get github.com/haccer/subjack;
echo "Downloading Wordlist into Cobra/Wordlists" 
cd ~/Cobra
mkdir Wordlists
cd Wordlists
git clone https://github.com/fuzz-security/SuperWordlist
git clone https://github.com/fuzzdb-project/fuzzdb
git clone https://github.com/danielmiessler/SecLists
echo "we are ready! lets go!!"
