############################################################################################
#			install-dependencies.sh
#
#
############################################################################################


function install() {
        clear

	pacman -Syyu --noconfirm 
        pacman -Rcns --noconfirm npm
        pacman -Rcns --noconfirm toolbox
        pacman -Rcns --noconfirm electron
        pacman -Rcns --noconfirm python
        pacman -Rcns --noconfirm xorg-server
        pacman -Rcns --noconfirm xorg
        pacman -Rcns --noconfirm nodejs
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
