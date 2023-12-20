#1 start
mkdir lab1
cd lab1
touch file.txt file1.txt file2.txt file3.txt
mkdir dir1 dir2
#1 end

#2 start
ls *.txt # փնտրում է *.txt ֆայլերը
ls * .txt # փնտրում է .txt տիպի ֆայլ 
#2 end

#3 start
ls f???.txt
#3 end

#4 start
ls file[0-9]*.txt
#4 end

#5 start
ls *[a-z0-1].txt
#5 end

#6 start
cp /etc/passwd lab1/
#6 end

#7 start
mv lab1/passwd lab1/new
mv lab1/new lab1/dir1/
mv lab1/dir1/new lab1/dir2/
#7 end

#8 start
mv ./dir2 ./dir3
mv ./dir3 ./dir1/
#8 end

#9 start
mv ./dir1/new ./
#9 end

#10 start
rm -r lab1
#10 end
