#!/bin/bash
echo "Realux installerare"
echo "Realux: Av, Simon Larsson"
echo " "

echo "DENNA INSTALLERARE KRÄVER FUNGERANDE NÄTVERKSUPPKOPLING. AVBRYT OM DU INTE HAR!"

# Dependencies
echo "- Installerar lite program som behövs"
echo "Uppdaterar repos"
sudo apt -y update
echo "Compton"
sudo apt -y install compton >> /dev/null
echo "Klar!"
echo "Nitrogen"
sudo apt -y install nitrogen >> /dev/null
echo "Klar!"
echo "Konsole"
sudo apt -y install konsole >> /dev/null


#i3
echo "i3 stock dependencies, Detta kan ta några minuter"
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake
git clone https://www.github.com/Airblader/i3 $HOME/i3-gaps-source
mv ci3auto.sh $HOME/i3-gaps-source
$HOME/i3-gaps-source/ci3auto.sh

# Creating required folders
echo "- Skapar mappar"
if [ -e $HOME/.fonts ]
then
	echo "~/.fonts finns redan! Detta är bra"
else
	echo "Skapar .fonts map"
	sudo mkdir $HOME/.fonts
fi
echo "Skapar ~/.config/realbar map"
sudo mkdir $HOME/.config/realbar
echo " "
echo " "


# Fonts
echo "- Installerar REAL logga som font"
sudo cp MassaSaker/Real.ttf $HOME/.fonts/Real.ttf
if [ -e $HOME/.fonts/Real.ttf ]
then
        echo "^ Lyckades"
else
        echo "^ Nåt gick fel!"
fi
echo "- Installerar NerdFonts (För realbar symboler)"
sudo cp -r MassaSaker/NerdFonts $HOME/.fonts/NerdFonts
if [ -e $HOME/.fonts/NerdFonts ]
then
        echo "^ Lyckades"
else
        echo "^ Nåt gick fel!"
fi



# Polybar dots
echo "- Installerar Realbar"
sudo cp MassaSaker/config $HOME/.config/realbar/config
sudo cp MassaSaker/launch.sh $HOME/.config/realbar/launch.sh


