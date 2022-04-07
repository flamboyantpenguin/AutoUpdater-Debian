#! /bin/bash

#Welcome to AutoUpdater6.8 PUBLIC BETA Installer (Debian/Ubuntu)
#Run the command ./install.sh or Double Click the file to begin
#Note : You may need to enable execute permissions to execute this file

command -v zenity
if [ $? = 1 ]; then
  echo "zenity is not installed. Do you want to install zenity? (Y/N) "
  read opt
  if [ $opt = "Y"]; then
    echo "Installing zenity using apt"
    sudo apt install zenity -y 
    if [ $? = 1 ]; then
      echo "Installation of zenity failed, cannot start installer without zenity"
      echo "Exiting installer"
      exit 1
    else 
      echo "Installation successfull, resuming AutoUpdater installation"
    fi
  else 
    echo "Cannot start installer without zenity"
    echo "Exiting installer"
    exit 1
  fi
zenity --info --text="Welcome to AutoUpdater6.8 PUBLIC BETA Installer"
opt=$(zenity --entry --text "Enter old for older versions of Ubuntu and other for others" --title="AutoUpdater6.8 BETA Installer")
if [ $opt = "old" ]; then
  password=$(zenity --password --title "AutoUpdater6.8 Installer" )
  echo $password | sudo -S tar -xvf alt_files.tar
  sudo sh ./installer 
  zenity --info --text="Installation Completed Successfully"
else
  password=$(zenity --password --title "AutoUpdater6.8 Installer" )
  echo -n $password | sudo -S tar -xvf files.tar
  sudo sh ./installer
  zenity --info --text="Installation Completed Successfully"
  exit 0
fi
