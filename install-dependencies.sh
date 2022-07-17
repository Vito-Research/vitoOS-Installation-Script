############################################################################################
#			install-dependencies.sh
#
#
############################################################################################


function install() {
        clear

	pacman -Syyu --noconfirm 
        pacman -S --noconfirm npm
        pacman -S --noconfirm toolbox
        pacman -S --noconfirm electron
        pacman -S --noconfirm python
        pacman -S --noconfirm xorg-server
        pacman -S --noconfirm xorg
        pacman -S --noconfirm nodejs
}


function repeatMenu() {
        clear
        echo """
	########################################################################################
	##      Welcome to the vitoOS-Installer.                                               #
	########################################################################################

	########################################################################################
	##      WARNING: This script may be unstable at the moment. Please make sure you       #
	##               backup your system before running this script.                        #
	########################################################################################

	########################################################################################
	##      Options                                                                        #
	##                                                                                     #
	########################################################################################

	########################################################################################
	##      1) Install GNOME-Desktop                                                       #
	##                                                                                     #
	##      2) Uninstall GNOME-Desktop                                                     #
	########################################################################################


	########################################################################################
	##      3) Install KDE-Desktop                                                         #
	##                                                                                     #
	##      4) Uninstall KDE-Desktop                                                       #
	########################################################################################


	########################################################################################
	##	Exiting the program
	##
	##
	##	Type 'exit' to exit the program
	########################################################################################

        """

}



install
repeatMenu
