Welcome to AutoUpdater6.8 BETA (Pre-Release 2)

AutoUpdater is an application designed to make updating applications an easy task. AutoUpdater is also designed for users to 
understand the way in which it work and use to design more better applications or adapt AutoUpdater itslef to your needs. So, AutoUpdater 
is an open source software. Thank you for joining us in this journey. 

--Installation Instructions--
To install first make sure you allowed to execute executable files. This can be done by enabling it 
in preferences of the file manager app you use. Now follow the below steps.

To open prefrences in Ubuntu 20.04 or above, open files and go to prefrences by using the menu button on top. 
If you don't see preferences there, right click or click on the app name in taskbar and select preferences. 
 
1. Run the install.sh file. If you are unable to execute it make sure it has execute permissions. To give it execute permissions, use the 
command sudo chmod 777 install.sh or edit it in the properties tab. To run it, type ./install.sh. 
2. Follow the on screen instructions to continue. Make sure you type your password correctly (enter your system password). Type your 
system username (currently logged in one) when asked.

Note : Once installed, you won't be able to install again. You need to download the installer again.

--Update Instructions--
If you are updating your AutoUpdater to a newer version, update the permissions of the update.sh file and use that file instead of 
install.sh. Update is currently not available for AutoUpdater3.6 and it is not stable. The logs of older version of AutoUpdater can 
be found in the home directory. 

--Usage Instructions--
To use the application, Run the script in Desktop called AutoUpdater. To see the code head to /etc/AutoUpdater. Logs can also be found 
there. 

--Uninstallation Instructions--
To uninstall, run the uninstall.sh script found in the AutoUpdater directory in Home. This is the config directory. Execute that file 
by double clicking or by running ./uninstall.sh. Remember, once uninstalled nothing would be left except logs which would be stored in 
your home directory. The logs will be stored in the AutoUpdater directory after successfull uninstall.  

--How to use Update logs--
Status of update and updated packages will be logged with time stamp in the /etc/AutoUpdater/logs directory. To fetch these logs to 
your AutoUpdater directory, use the fetchlog.sh script. 


To learn more visit : https://sites.google.com/view/linux-autoupdater/

Made by the Linux Penguin (shapedana@gmail.com)
