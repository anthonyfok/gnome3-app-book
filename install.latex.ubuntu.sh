sudo apt-get install texlive-xetex
sudo apt-get install texlive-xetex
sudo apt-get install texlive-latex-recommended # main packages
sudo apt-get install texlive-latex-extra # package titlesec
sudo apt-get install ttf-arphic-gbsn00lp ttf-arphic-ukai # from arphic
sudo apt-get install ttf-wqy-microhei ttf-wqy-zenhei # from WenQuanYi
sudo apt-get install texlive-fonts-recommended
sudo apt-get install latex-cjk-all

wget -c https://tonghuix.io/FZSongS.ttf
sudo mv FZSongS.ttf /usr/share/fonts/truetype/

sudo fc-cache
