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
			##      Search: install-dependencies
			##
			##################################################################
			## If the user presses 1), then it will install the dependencies

			1)
				sh install-dependencies.sh

				;;


			##################################################################
			##      Search: uninstall-dependencies
			##
			##################################################################
			## If the user presses 1), then it will uninstall the dependencies

			2)
				sh uninstall-dependencies.sh

				;;



			##################################################################
			##      Search: install-streamlit
			##
			##################################################################
			## If the user presses 1), then it will install streamlit and it's dependencies.

			3)
				sh install-streamlit.sh

				;;



			##################################################################
			##      Search: uninstall-streamlit
			##
			##################################################################
			## If the user presses 1), then it will install streamlit and it's dependencies.

			4)
				sh uninstall-streamlit.sh

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
