#!/bin/bash

choice_list="addUser delUerWithoutHomeDir delUserWithHomeDir userDetails enableUser disableUser addGroup addUserToGroup delUserFromGroup Exit"

source checkIfGroupExists 
source checkIfUserDoesNotExist 
source checkIfUserExists 
source replaceGroupWithGID 
source replaceNameWithUID

select choice in ${choice_list}
do
	case $choice in
		addUser)
			source addUser
			;;
		delUerWithoutHomeDir)
			source delUserWithoutHome
			;;
		delUserWithHomeDir)
			source delUserWithHome
			;;
		userDetails)
			source userDetails
			;;
		enableUser)
			source enableUser
			;;
		disableUser)
			source disableUser
			;;
		addGroup)
			source addGroup
			;;
		addUserToGroup)
			source addUserToGroup
			;;
		delUserFromGroup)
			source delUserFromGroup
			;;
		Exit)
			exit
			;;
		*)
			echo "Bad Choice"
			echo "You must enter a number from 1 to 10"
			;;
	esac
done
