#!/bin/bash
#
#
echo ""
echo ""
echo "Silahkan Pilih OS yang ingin anda install:"
echo "	1.) Windows 10"
echo "	2.) Windows 2016"
echo "	3.) Windows 2019"
echo "	4.) Windows 2022"

read -p "Pilih [1]: " selectos

ethernt="Ethernet Instance 0"

case "$selectos" in
	1|"") selectos="http://rdp.yha.my.id/windows10.gz";;
	2) selectos="http://rdp.yha.my.id/windows2016.gz";;
	3) selectos="http://rdp.yha.my.id/windows2019.gz";;
	4) selectos="http://rdp.yha.my.id/windows2022.gz";;
	*) echo "pilihan salah"; exit;;
esac

IP4=$(curl -4 -s icanhazip.com)
getwey=$(ip route | awk '/default/ { print $3 }')


cat >/tmp/net.bat<<EOF
@ECHO OFF
cd.>%windir%\GetAdmin
if exist %windir%\GetAdmin (del /f /q "%windir%\GetAdmin") else (
echo CreateObject^("Shell.Application"^).ShellExecute "%~s0", "%*", "", "runas", 1 >> "%temp%\Admin.vbs"
"%temp%\Admin.vbs"
del /f /q "%temp%\Admin.vbs"
exit /b 2)


netsh -c interface ip set address name="$ethernt" source=static address=$IP4 mask=255.255.240.0 gateway=$getwey
netsh -c interface ip add dnsservers name="$ethernt" address=1.1.1.1 index=1 validate=no
netsh -c interface ip add dnsservers name="$ethernt" address=8.8.4.4 index=2 validate=no


ECHO SELECT VOLUME=%%SystemDrive%% > "%SystemDrive%\diskpart.extend"
ECHO EXTEND >> "%SystemDrive%\diskpart.extend"
START /WAIT DISKPART /S "%SystemDrive%\diskpart.extend"


cd /d "%ProgramData%/Microsoft/Windows/Start Menu/Programs/Startup"

del "%~f0"
exit
EOF


wget --no-check-certificate -O- $selectos | gunzip | dd of=/dev/vda bs=3M status=progress

mount.ntfs-3g /dev/vda2 /mnt
cd "/mnt/ProgramData/Microsoft/Windows/Start Menu/Programs/"
cd Start* || cd start*; \
cp -f /tmp/net.bat net.bat

echo 'Your server will turning off in 5 second'
sleep 5
poweroff
