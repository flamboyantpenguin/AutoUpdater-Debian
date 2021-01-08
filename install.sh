#! /bin/bash

#Welcome to AutoUpdater6.0 PUBLIC BETA Installer (Debian/Ubuntu)
#Run the command ./install.sh or Double Click the file to begin
#Note : You may need to enable execute permissions to execute this file

zenity --info --text="Welcome to AutoUpdater6.0 PUBLIC BETA Installer"
opt=$(zenity --entry --text "Enter old for older versions of Ubuntu and other for others" --title="AutoUpdater6.0 BETA Installer")
if [ $opt = "old" ]; then
  password=$(zenity --password --title "AutoUpdater6.0 Installer" )
  echo $password | sudo -S tar -xvf alt_files.tar
  sudo sh ./installer 
  zenity --info --text="Installation Completed Successfully"
else
  password=$(zenity --password --title "AutoUpdater6.0 Installer" )
  echo -n $password | sudo -S tar -xvf files.tar
  sudo sh ./installer
  zenity --info --text="Installation Completed Successfully"
fi
