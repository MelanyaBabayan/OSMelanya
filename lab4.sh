#!/bin/bash

#1 start
touch file.txt
chmod 744 file.txt
#1 end

#2 start
chmod a+x file.txt
#2 end

#3 start
chmod go-x file.txt
#3 end

#4 start
chmod 600 file.txt
#4 end

#5 start
mkdir dir
chmod 666 dir
touch dir/file.txt
#5 end

#6 start
touch dir/file1.txt dir/file2.txt
chmod 766 dir/*
#6 end

#7 start
umask 027
#7 end

#8 start
umask 077
umask 022
#8 end

#9 start
echo 'ls /home/student' > script.sh
chmod 741 script.sh
./script.sh
chmod +x script.sh
#9 end

#10 start
mkdir ~/bin
mv script.sh ~/bin
echo 'export PATH=$PATH:~/bin' >> ~/.bashrc
source ~/.bashrc
#10 end