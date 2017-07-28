#!/bin/bash
echo "Realux installerare"
echo "Realux: Av, Simon Larsson"
echo " "

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


# i3
