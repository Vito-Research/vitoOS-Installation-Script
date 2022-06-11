#########################################################
#       Installation Script
#
#
############################################################


#!bin/env bash 


function introduction() {
        dialog --title "vitoOS Installation Script" --msgbox "This install script will install the vitoOS components and dependencies on various Arch Linux-based distributions." 10 50

}


function confirmation() {
        clear
        echo """

        ┌──┬─────────────────────────────────────┬──┐
        │  ├─────────────────────────────────────┤  │
        │  │                                     │  │
        │  │                                     │  │
        │  │                                     │  │
        │  │                                     │  │
        │  │      Are you sure you want to       │  │
        │  │                                     │  │
        │  │      proceed to install the         │  │
        │  │                                     │  │
        │  │      vitoOS Components?             │  │
        │  │                                     │  │
        │  │                                     │  │
        │  │                                     │  │
        │  │                                     │  │
        │  │    | YES |           | NO |         │  │
        │  │                                     │  │
        │  │                                     │  │
        │  │                                     │  │
        │  ├─────────────────────────────────────┤  │
        └──┴─────────────────────────────────────┴──┘       


        """

while :
	do 
	read CHOICE

	case $CHOICE in  

		#########################################################
		## After the user chooses yes, then it will install the 
		## dependencies and components for running vitoOS
                ## on other Arch Based Distributions. 
		#########################################################

		
		yes)

			#########################################################
                        ## 	Make sure the packages is up to date
                        #########################################################
                        
                        sudo pacman -Syyu









                        #########################################################
			#	Install the standard packages
			#
			#########################################################

                        sudo pacman -S --noconfirm alsa-utils
                        sudo pacman -S --noconfirm amd-ucode
                        sudo pacman -S --noconfirm arch-install-scripts
                        sudo pacman -S --noconfirm archinstall
                        sudo pacman -S --noconfirm b43-fwcutter
                        sudo pacman -S --noconfirm base
                        sudo pacman -S --noconfirm bind-tools
                        sudo pacman -S --noconfirm brltty
                        sudo pacman -S --noconfirm broadcom-wl
                        sudo pacman -S --noconfirm btfs-progs
                        sudo pacman -S --noconfirm clonezilla
                        sudo pacman -S --noconfirm cloud-init
                        sudo pacman -S --noconfirm darkhttpd
                        sudo pacman -S --noconfirm ddrescue
                        sudo pacman -S --noconfirm dhcpcd
                        sudo pacman -S --noconfirm diffutils
                        sudo pacman -S --noconfirm dialog 
                        sudo pacman -S --noconfirm dmraid 
                        sudo pacman -S --noconfirm dnsmasq
                        sudo pacman -S --noconfirm diffutils
                        sudo pacman -S --noconfirm dosfstools
                        sudo pacman -S --noconfirm e2fsprogs
                        sudo pacman -S --noconfirm edk2-shell
                        sudo pacman -S --noconfirm efibootmgr
                        sudo pacman -S --noconfirm espeakup
                        sudo pacman -S --noconfirm ethtool
                        sudo pacman -S --noconfirm exfatprogs
                        sudo pacman -S --noconfirm f2fs-tools
                        sudo pacman -S --noconfirm fatresize
                        sudo pacman -S --noconfirm fsarchiver
                        sudo pacman -S --noconfirm gnu-netcat
                        sudo pacman -S --noconfirm gpart
                        sudo pacman -S --noconfirm gpm 
                        sudo pacman -S --noconfirm gptfdisk
                        sudo pacman -S --noconfirm grml-zsh-config
                        sudo pacman -S --noconfirm grub
                        sudo pacman -S --noconfirm hdparm 
                        sudo pacman -S --noconfirm intel-ucode
                        sudo pacman -S --noconfirm ipw2100-fw
                        sudo pacman -S --noconfirm ipw2200-fw
                        sudo pacman -S --noconfirm irrsi
                        sudo pacman -S --noconfirm iwd
                        sudo pacman -S --noconfirm jfsutils
                        sudo pacman -S --noconfirm less
                        sudo pacman -S --noconfirm lftp
                        sudo pacman -S --noconfirm libfibo2
                        sudo pacman -S --noconfirm libusb-compat 
                        sudo pacman -S --noconfirm linux 
                        sudo pacman -S --noconfirm linux-atm
                        sudo pacman -S --noconfirm linux-firmware
                        sudo pacman -S --noconfirm linux-firmware-marvell
                        sudo pacman -S --noconfirm livecd-sounds
                        sudo pacman -S --noconfirm lsscsisui o
                        sudo pacman -S --noconfirm lvm2
                        sudo pacman -S --noconfirm lynx
                        sudo pacman -S --noconfirm man-db 
                        sudo pacman -S --noconfirm man-pages 
                        sudo pacman -S --noconfirm mc
                        sudo pacman -S --noconfirm mdadm
                        sudo pacman -S --noconfirm memtest86+
                        sudo pacman -S --noconfirm mkinitcpio
                        sudo pacman -S --noconfirm mkinitcpio-archiso
                        sudo pacman -S --noconfirm mkinitcpio-nfs-utils
                        sudo pacman -S --noconfirm modemmanager
                        sudo pacman -S --noconfirm mtools
                        sudo pacman -S --noconfirm nano 
                        sudo pacman -S --noconfirm nbd
                        sudo pacman -S --noconfirm ndisc6
                        sudo pacman -S --noconfirm nfs-utils
                        sudo pacman -S --noconfirm nilfs-utils
                        sudo pacman -S --noconfirm nmap
                        sudo pacman -S --noconfirm ntfs-3g
                        sudo pacman -S --noconfirm nvme-cli
                        sudo pacman -S --noconfirm openconnect
                        sudo pacman -S --noconfirm openssh
                        sudo pacman -S --noconfirm openvpn
                        sudo pacman -S --noconfirm partclone 
                        sudo pacman -S --noconfirm pcsclite
                        sudo pacman -S --noconfirm ppp
                        sudo pacman -S --noconfirm pptpclient
                        sudo pacman -S --noconfirm pv 
                        sudo pacman -S --noconfirm qemu-guest-agent
                        sudo pacman -S --noconfirm refind
                        sudo pacman -S --noconfirm reflector
                        sudo pacman -S --noconfirm reiserfsprogs
                        sudo pacman -S --noconfirm rp-pppoe
                        sudo pacman -S --noconfirm rsync
                        sudo pacman -S --noconfirm rxvt-unicode-terminfo
                        sudo pacman -S --noconfirm screen 
                        sudo pacman -S --noconfirm sdparm 
                        sudo pacman -S --noconfirm sg3_utils
                        sudo pacman -S --noconfirm smartmontools
                        sudo pacman -S --noconfirm sof-firmware
                        sudo pacman -S --noconfirm squashfs-tools
                        sudo pacman -S --noconfirm sudo
                        sudo pacman -S --noconfirm syslinux
                        sudo pacman -S --noconfirm tcpdump 
                        sudo pacman -S --noconfirm systemd-resolvconf
                        sudo pacman -S --noconfirm terminus-font
                        sudo pacman -S --noconfirm testdisk
                        sudo pacman -S --noconfirm tmux
                        sudo pacman -S --noconfirm tpm2-tss 
                        sudo pacman -S --noconfirm udftools
                        sudo pacman -S --noconfirm usb_modeswitch
                        sudo pacman -S --noconfirm usbmuxd
                        sudo pacman -S --noconfirm usbutils
                        sudo pacman -S --noconfirm usb_modeswitch
                        sudo pacman -S --noconfirm usbmuxd
                        sudo pacman -S --noconfirm usbutils
                        sudo pacman -S --noconfirm vim
                        sudo pacman -S --noconfirm vpnc
                        sudo pacman -S --noconfirm wireless-regdb
                        sudo pacman -S --noconfirm wireless_tools
                        sudo pacman -S --noconfirm wpa_supplicant
                        sudo pacman -S --noconfirm wvdial
                        sudo pacman -S --noconfirm xfsprogs
                        sudo pacman -S --noconfirm x12tpd
                        sudo pacman -S --noconfirm zsh








                        #########################################################
			#	Install the specified packages
			#
			#########################################################


                        sudo pacman -S --noconfirm git

			;;

		###################################################################
		## 	After the user chooses no, then it will not install the 
		## 	dependencies and components for running vitoOS
                ## 	on other Arch Based Distributions. The program 
                ## 	will quit. 
		###################################################################
		
		no)
			exit
			;;
esac
done

}

introduction
confirmation
