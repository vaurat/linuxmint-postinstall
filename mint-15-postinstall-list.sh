
# ne pas installer ubuntu-restricted-extras ubuntu-tweak 

# add repository for : getdeb
wget -q -O- http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu quantal-getdeb games" >> /etc/apt/sources.list.d/getdeb.list'
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu quantal-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'

# pour mise à jour de backintime 1.0.10 à 1.0.24
sudo add-apt-repository ppa:bit-team/stable

####################################################################
#packages to install first:
sudo apt-get install nfs-common backintime-gnome git preload terminator vim

# add repository for : glances (non mis à jour au 20121204)
#sudo add-apt-repository ppa:arnaud-hartmann/glances-stable

#add repository for : get things gnome !
#sudo add-apt-repository ppa:gtg/ppa
#sudo install gtg 

#add repository for : Oracle Java
sudo add-apt-repository ppa:webupd8team/java 
# non installed (yet)... sudo apt-get install oracle-java7-installer
# if not set : sudo update-java-alternatives -s java-7-oracle
# waiting quantal package... sudo apt-get install glances

#add repository for undistract-me
#sudo add-apt-repository ppa:undistract-me-packagers/daily 

# file sharing supports
sudo apt-get install davfs2

########################################################
#setup indicator sensor
# sudo sensors-detect est à faire 
sudo add-apt-repository ppa:alexmurray/indicator-sensors

# google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get install google-chrome-stable 

#add repository for : sublime text
sudo add-apt-repository ppa:webupd8team/sublime-text-2

#add repository for : faenza icon theme
sudo add-apt-repository ppa:tiheum/equinox
sudo apt-get install faenza-icon-theme 

#prise en charge lecteur en fat64 (exfat)
sudo add-apt-repository ppa:relan/exfat
sudo apt-get install exfat-utils fuse-exfat

#install des packages venant de ppas
sudo apt-get update
sudo apt-get install indicator-sensors
sudo apt-get install sublime-text 

# essentiels
sudo apt-get install build-essential vim-gnome vim-doc subversion gitg zenity unetbootin gparted most tree goaccess glogg bleachbit ccze virtualbox

# playing (large and slow download > 30 min)
sudo apt-get install 0ad wesnoth dosbox triplea

# desktop apps in french
sudo apt-get install gtkhash conky conky-all gnome-pie firefox-locale-fr skype retext meld planner dia calibre kmymoney gramps hyphen-fr libreoffice-filter-binfilter libreoffice-help-fr libreoffice-l10n-fr verbiste-gnome mythes-fr python-boto python-pygoocanvas ttf-mscorefonts-installer tesseract-ocr tesseract-ocr-fra tesseract-ocr-ita filezilla klavaro focuswriter

#undistract-me (notification for long bash commands)
#sudo add-apt-repository ppa:undistract-me-packagers/daily
#sudo apt-get install undistract-me 

# network and security utlities
sudo apt-get install htop iftop ifstat iptraf wireshark tshark arp-scan netspeed nmap netpipe-tcp chkrootkit rkhunter remmina

# multimedia supports 
sudo apt-get install avidemux v4l2ucp audacity isomaster vlc x264 ffmpeg2theora oggvideotools istanbul shotwell hugin pavucontrol shutter darktable gimp gimp-plugin-registry ogmrip transmageddon guvcview wavpack mppenc faac flac vorbis-tools faad lame cheese sound-juicer picard arista milkytracker mypaint geeqie easytag radiotray banshee-extension-soundmenu banshee-extension-lyrics fotoxx phatch

# To install Sublime Package Control, open Sublime Text 2, press ctrl+` (` is the character next to 1) and paste this:
# 
# not proved... import urllib2,os; pf='Package Control.sublime-package'; ipp=sublime.installed_packages_path(); os.makedirs(ipp) if not os.path.exists(ipp) else None; urllib2.install_opener(urllib2.build_opener(urllib2.ProxyHandler())); open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read()); print 'Please restart Sublime Text to finish installation'

#----------------------------------------------------------
#ajout des repos : 
#ppa:webupd8team/themes 
#ppa:webupd8team/java 
#ppa:tualatrix/ppa (ubuntu-tweak)
#ppa:arnaud-hartmann/glances-stable 
#ppa:nae-team/ppa (extensions nautilus)
#ppa:shutter/ppa
#ppa:pmjdebruijn/darktable-release
#ppa:simonschneegans/testing (gnome-pie)
#ppa:bit-team/stable (last version of backintime)
#ppa:gtg/ppa (stable GTG)

# which purpose ?
#sudo apt-get install lsb-core 
