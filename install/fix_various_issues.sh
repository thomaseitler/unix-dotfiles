#fix screentearing
touch /usr/share/X11/xorg.conf.d/20-intel.conf

echo 'Section "Device"  
  Identifier  "Intel Graphics"  
  Driver      "intel"  
  Option      "AccelMethod"  "sna"  
  Option      "TearFree"     "true"  
EndSection' > /usr/share/X11/xorg.conf.d/20-intel.conf
# fix network names for usb dongle
ln -s /dev/null /etc/systemd/network/99-default.link
