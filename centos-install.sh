#!/bin/bash
yum update;
yum install gcc gcc-c++ flex bison patch make glibc-static lzma zlib zlib-devel libtool glib2-devel gettext texinfo subversion minicom pygtk2 subversion subversion-devel gcc gcc-c++ neon-devel python-devel pygtk2-devel eel2 eel2-devel python-configobj nautilus-devel meld libX11-devel  samba samba-client samba-common  fuse fuse-ntfs-3g dkms dkms-fuse tftp-server -y

yum groupinstall 'Development Tools';
