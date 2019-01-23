About mntnas.sh

This script is used to mount a home ran NAS to the /home/$USER/nas directory for whoever runs it

This assumes that the share on nasip uses the currently logged in username to log in with and requires a .creds file
with your username and password for the share in it. It is recommended that this file is changed to rw only for the owner.

If this .creds file does not exist it prints messages instructing you how to create this .creds file

The server's IP address can be changed by editing the nasip variable to the IP or FQDN of your own NAS
