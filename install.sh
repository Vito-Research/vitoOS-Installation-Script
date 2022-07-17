############################################################
#       Installation Script
#
#
############################################################


#!bin/env bash 

function getMirror() {
	########################################################################
	##	Credits to Chaotic-AUR
	##
	##	https://aur.chaotic.cx/
	##
	########################################################################

	pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com                                                                                         && \
	pacman-key --lsign-key FBA220DFC880C036                                                                                                                         && \
	pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
	cp pacman.conf /etc/pacman.conf
	pacman -Sy

}


function introduction() {
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
	##      To get the options, please type 'options'. 
	########################################################################################


	########################################################################################
	##	Exiting the program
	##
	##
	##	Type 'exit' to exit the program
	########################################################################################
	"""

}



function getChoices() {
	while :
		do
		read CHOICE

		case $CHOICE in
			##################################################################
			##      Search: options
			##
			##################################################################
			## If the user types options, then it display the list of options

			options)
				sh options.sh
				;;


			##################################################################
			##      Search: install-gnome-desktop
			##
			##################################################################
			## If the user presses 1), then it will install the GNOME-Desktop Environment.

			1)
				sh install-gnome-desktop.sh

				;;
			##################################################################
			##      Search: uninstall-gnome-desktop
			##
			##################################################################

			## If the user presses 2), then it will uninstall the GNOME-Desktop Environment.

			2)

				sh uninstall-gnome-desktop.sh

				;;
			##################################################################
			##      Search: install-kde-desktop
			##
			##################################################################

                        ## If the user presses 3), then it will install the KDE-Desktop Environment.

			3)

				sh install-kde-desktop.sh
				;;

			##################################################################
			##      Search: uninstall-kde-desktop
			##
			##################################################################

                        ## If the user presses 4), then it will uninstall the KDE-Desktop-Environment

			4)
				sh uninstall-kde-desktop.sh

				;;

			##################################################################
			##      Search: install-lxqt-desktop
			##
			##################################################################

                        ## If the user presses 4), then it will install the LXQT-Desktop-Environment

			5)
				sh install-lxqt-desktop.sh

				;;

			##################################################################
			##      Search: uninstall-lxqt-desktop
			##
			##################################################################

                        ## If the user presses 4), then it will uninstall the LXQT-Desktop-Environment

			6)
				sh uninstall-lxqt-desktop.sh

				;;















	#			▼▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲►        ▲ ▼▼           ▼▲▲▼      ►▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲►           ►▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲►
	#			◄▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼►         ▼▲▼▼▼         ◄▼▼▼▼      ►▼▼▼▼►►►►►▼▼▼▼▼▼►           ►▼▼►►►►►►▼▼▼▼►►►▼▼►
	#			◄▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼          ▼▼▼▼▼      ▼▼ ◄▼▼            ◄▼▼▼▼►                    ▼▼▼▼►►▼▼▼▼▼▼▼
	#			◄▼▼▼▼►                           ▼▼▼▼▼    ▼▼▼▲▼              ◄▼▼▼▼►                        ◄▼▼►
	#			◄▼▼▼▼►                            ▼▼▼▼▼  ▼▼▼▼▼               ◄▼▼▼▼►                        ◄▼▼►
	#			◄▼▼▼▼►                             ▼▼▼▼▲▲▼▼▼▼                ◄▼▼▼▼►                        ◄▼►►
	#			◄▼▼▼▼►                              ▼▼▼▼▼▼▼                  ◄▼▼▼▼►                        ◄▼►►
	#			◄▼▼▼▼▼▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲►              ▼ ◄▼▼                   ◄▼▼▼▼►                        ◄▼►►
	#			◄▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼►                ▼▼▼                    ◄▼▼▼▼►                        ◄▼►►
	#			◄▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼                ◄►                     ◄▼▼▼▼►                        ◄▼►►
	#			◄▼▼▼▼►                              ▼▲▼▼▼                    ◄▼▼▼▼►                        ◄▼►►
	#			◄▼▼▼▼►                             ▼▼▼▼▼▼▼                   ◄▼▼▼▼►                        ◄▼►►
	#			◄▼▼▼▼►                             ◄▼▼▼▼▼▼▼                  ◄▼▼▼▼►                        ◄▼►►
	#			◄▼▼▼▼▼▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▼         ▼▲▼▼▼▼▼▼▼▼▼                 ◄▼▼▼▼►                        ◄▼►►
	#			◄▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼►        ▼▼▼▼▼▼ ▼▼► ▼                 ◄▼▼▼▼►                        ◄▼▼►
	#			◄▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼►       ▼▼▼▼▼    ▼▼▲▼▼           ►▲▲▲▲▼▲►►►▲▲▲▲▲▲►                  ◄▼▼►
	#			▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼     ◄►▼▼▼       ▼▼▼▼►          ◄▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼►                  ◄▼▼►





			## After the user types 'exit', it will exit the program

			exit)
				exit
				;;



			## If the user presses a unknown character, it will inform
			## the user to choose the correct commands.
			*)
				echo """

				"""
	esac
	done


}



getMirror
introduction
getChoices
