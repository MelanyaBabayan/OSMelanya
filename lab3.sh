#!/bin/bash

#1 start
ls /etc | grep '[0-9]'
#1 end

#2 start
echo -e "kenlo\Gaganlo\Hello\somet\savitlo\n" >test_file.txt
grep -E '\b\w{3}lo$' test_file.txt
#2 end

#3 start
grep -h '[A-Z]' список_каталогов*.txt:  # Փնտրում է առնվազն մեկ մեծատառ պարունակող տողեր:
grep -h '[-AZ]' список_каталогов*.txt:  # Փնտրում է «-», «A» կամ «Z» նիշերից որևէ մեկը պարունակող տողեր:
grep -h '^[A-Z]' список_каталогов*.txt: # Փնտրում է մեծատառով սկսվող տողեր:
grep -h '[^A-Z]' список_каталогов*.txt: # Փնտրում է տողեր, որոնք պարունակում են մեծատառերից բացի որևէ այլ նիշ:
#3 end

#4 start
grep -E '^(bz|zip)' dirlist-bin.txt dirlist-sbin.txt
#4 end

#5 start
grep -Eh '^(bz|gz|zip)' список_каталогов*.txt # Փնտրում է «bz», «gz» կամ «zip» տողեր:
grep -Eh '^bz|gz|zip' список_каталогов*.txt   # Փնտրում է «bz»-ով սկսվող կամ «gz» կամ «zip» պարունակող տողեր:
#5 end

#6 start
echo "test@test.com" | grep -E '^([a-zA-Z0-9._%+-]+)@([a-zA-Z0-9.-]+)\.([a-zA-Z]{2,})$'
#6 end

#7 start
echo "192.168.0.1" | grep -E '^([0-9]{1,3}\.){3}[0-9]{1,3}$'
#7 end

#9 start
echo "01/02/1970" | sed -E 's~([0-9]+)/([0-9]+)/([0-9]+)~\3-\2-\1~'
#9 end

#10 start
echo "0xx 12-34-56" | sed -E 's~^(0xx) ([0-9]{2})-([0-9])([0-9])-([0-9]{2})$~(\1) \2\3-\4\5~'
#10 end