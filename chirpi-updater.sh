#!/bin/bash
# you'll need chirpc from https://github.com/tylert/chirp.hg

# remove the previous Chirp image files since we'll be grabbing new ones
rm -rf /home/pi/chirpi-public/*.img

# Chirp images and thier corresponding public URLs
# These sample images are just some Seattle area repeaters (pulled from Repeaterbook via
# its Query Data Source feature) plus some simplex frequencies and the GMRS/FRS channels
# (which actually are not legal on these radios but used just here as an example).
BaofengUV5R5URL="https://www.dropbox.com/s/3ofqz7ohb00lvm9/Baofeng_UV-5R5_Seattle_VHF_GMRS_FRS_Simplex.img"
BaofengUV82URL="https://www.dropbox.com/s/mnypmrpw6qco93e/Baofeng_UV-82_Seattle_VHF_GMRS_FRS_Simplex.img"
BaofengUV5RTPURL="https://www.dropbox.com/s/26q18ksbgaqcvlr/Baofeng_UV-5RTP_Seattle_VHF_GMRS_FRS_Simplex.img"
QYTKT8900URL="https://www.dropbox.com/s/cndu4og0txf8ihz/QYT_KT8900_Seattle_VHF_GMRS_FRS_Simplex.img"

echo $BaofengUV5R5URL

# Download all your image files
wget -P /home/pi/chirpi-public/ $BaofengUV5R5URL
wget -P /home/pi/chirpi-public/ $BaofengUV82URL
wget -P /home/pi/chirpi-public/ $BaofengUV5RTPURL
wget -P /home/pi/chirpi-public/ $QYTKT8900URL

sleep 1 # probably not needed but added anyway

# Run the chirpc commands to update specific radio types.
# You can query the syntax for radio types with the "chirpc --list-radios" command.
# These will all fail except for the that actually has that kind of radio plugged in.
# Since you're using a Raspberry Pi, this part could easily be expanded so that you have 
# specific physical buttons for specific radios or even add an LCD/OLED screen and select the radio type.
/home/pi/chirp.hg/chirp.hg/chirpc -r Baofeng_UV-82 --serial=/dev/ttyUSB0 --mmap=/home/pi/chirpi-public/Baofeng_UV-82_Seattle_VHF_GMRS_FRS_Simplex.img --upload-mmap
/home/pi/chirp.hg/chirp.hg/chirpc -r QYT_KT8900 --serial=/dev/ttyUSB0 --mmap=/home/pi/chirpi-public/QYT_KT8900_Seattle_VHF_GMRS_FRS_Simplex.img --upload-mmap
/home/pi/chirp.hg/chirp.hg/chirpc -r Baofeng_UV-82HP --serial=/dev/ttyUSB0 --mmap=/home/pi/chirpi-public/Baofeng_UV-5RTP_Seattle_VHF_GMRS_FRS_Simplex.img --upload-mmap
/home/pi/chirp.hg/chirp.hg/chirpc -r Baofeng_UV-5R --serial=/dev/ttyUSB0 --mmap=/home/pi/chirpi-public/Baofeng_UV-5R5_Seattle_VHF_GMRS_FRS_Simplex.img --upload-mmap

# Assuming your ISP won't block outgoing email, you get an email to let you know it's done.
# You'll need to setup Postfix or Sendmail and install mailutils, then uncomment the following
# and put in your email address.
#echo done | mail -s "Upload Done" your@email.com

# I have the script sleep for 60 seconds before rebooting so I have time to SSH in if needed.
# 60 seconds should be enough time to log in and comment out the poweroff line so on the next boot
# it won't automatically power off, but you can increase/decrease the time as needed.
sleep 60

# Uncomment the following line when you're ready for headless mode. This way your Pi
# will safely poweroff so you're ready to unplug it and stow it after the radio is updated.
#sudo poweroff
