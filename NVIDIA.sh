# Check 
arch-yay() {
    if ! which yay > /dev/null; then
    clear
    sudo pacman -Syu --noconfirm
    sudo pacman -S --needed base-devel git --noconfirm
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si  --noconfirm
fi
}
arch-dialog() {
    if ! which  dialog > /dev/null; then
    clear
    sudo pacman -Syu dialog --noconfirm
fi
}
pLoad(){
clear
echo -e " Please wait ... "
sleep 1

}


#_Main_
pLoad
arch-yay
arch-dialog

#

N340(){
clear
sudo pacman -S base-devel linux-headers git nano --needed --noconfirm
yay -S nvidia-340xx-dkms nvidia-340xx-utils lib32-nvidia-340xx-utils nvidia-settings --noconfirm
dialog --msgbox "Install complete reboot your computer." 8 40
}

N390()
{
clear
sudo pacman -S base-devel linux-headers git nano --needed --noconfirm
yay -S nvidia-390xx-dkms nvidia-390xx-utils lib32-nvidia-390xx-utils nvidia-settings --noconfirm
dialog --msgbox "Install complete reboot your computer." 8 40
}

N470()
{
clear
sudo pacman -S base-devel linux-headers git nano --needed --noconfirm
yay -S nvidia-370xx-dkms nvidia-370xx-utils lib32-nvidia-370xx-utils nvidia-settings --noconfirm
dialog --msgbox "Install complete reboot your computer." 8 40
}

N525()
{
clear
sudo pacman -S base-devel linux-headers git nano --needed --noconfirm
yay -S nvidia-525xx-dkms nvidia-525xx-utils lib32-nvidia-525xx-utils nvidia-settings --noconfirm
dialog --msgbox "Install complete reboot your computer." 8 40
}

N535(){
clear
sudo pacman -S base-devel linux-headers git nano --needed --noconfirm
yay -S nvidia-535xx-dkms nvidia-535xx-utils lib32-nvidia-535xx-utils nvidia-settings --noconfirm
dialog --msgbox "Install complete reboot your computer." 8 40
}





# Display dialog box for user choice
choice=$(dialog --menu "Choose Install GPU NVIDIA:" 15 40 3 \
    1 " nvidia-340xx" \
    2 " nvidia-390xx" \
    3 " nvidia-470xx" \
    4 " nvidia-525xx" \
    5 " nvidia 535xx" \
    6 " Exit" --stdout)

# If-else conditions based on user choice
case $choice in
    1)
        
	    N340
        ;;
    2)
        
	    N390
        ;;
    3)
        
	    N470
        ;;
    4)  
	    N525
	;;
    5) 
	    N535
        ;;
    6) 
	    break
	;;
    *)
        dialog --msgbox "Oh. Please choose a valid option." 8 40
        ;;
esac

# Display user input
dialog --msgbox "Bye Bye !!" 8 40
