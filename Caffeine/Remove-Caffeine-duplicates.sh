#!/bin/zsh

#.SYNOPSIS
#	Remove-Caffeine-duplicates.sh Script Version 1.0
#.DESCRIPTION
#	Deletes duplicate Caffeine apps that we're installed through Jamf from a mac.
#   The Caffeine app doesn;t play well when you have the 1.1.1 version installed. Without this script Caffeine would install a numerous times in .localized folders. This script will remove the old version from the /Applications folder.
#.EXAMPLE
#	~$ ./Remove-Caffeine-duplicates.sh
#	How does it work?
#	Checks for duplicates of the Caffeine app and removes them.
#.NOTES
#	Script name: Remove-Caffeine-duplicates.sh
#	Author:      Tim de Jong
#	Date:        2021-09-23
#	<Changelog: if you change something in the script after using it, add it to the changelog and change te versionnumber here and on the first line!>
#	----- CHANGELOG -----
#	TDJ 20210915 1.0.0 created this script
#	----- TODO ---------
#	 
#>

# Removing the .localized folders
for dir in /Applications/Caffeine*.localized; do
    echo "Removing $dir"
    rm -r "$dir"
done

# Removing the .app folder
for dir2 in /Applications/Caffeine.app; do
    echo "Removing $dir2"
    rm -r "$dir2"
done