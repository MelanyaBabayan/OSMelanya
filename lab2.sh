#1 start
cat > file1 # Ստեղծում է ֆայլ file1. և վերցնում է մուտքագրումը մինչև Ctrl+D կգրվիls: Մուտքագրված տեքստը պահպանվում է file1-ում:
cat file1 # Ցուցադրում է file1-ի բովանդակությունը:
cat < file1 # Ցուցադրում է file1-ի բովանդակությունը:
#1 end

#2 start
cat > file1.txt
cat > file2.txt
cat > file3.txt
cat file1.txt file2.txt file3.txt > Final.txt
#2 end

#3 start
ls ./*.txt | wc -l
#3 end

#4 start
cat file1.txt file2.txt file3.txt | sort > sorted.txt
#4 end

#5 start
ls -S ./ | head -n 15
#5 end

#6 start
ls ./ > ls.txt
#6 end

#7 start
echo "secret text" | tr 'a-zA-Z' 'n-za-mN-ZA-M'
echo "frperg grkg" | tr 'a-zA-Z' 'n-za-mN-ZA-M'
#7 end

#8 start
echo "Student’s home directory is {home_dir}." > home.txt
sed 's/{home_dir}/\/home\/student/' home.txt > home_modified.txt
#8 end

#9 start
echo "Line 1" > file4.txt
echo "Line 2" >> file4.txt
echo "Line 3" >> file4.txt
echo "Line 4" >> file4.txt
echo "Line 5" >> file4.txt
sed -n '2p;4p' file4.txt
#9 end

#10 start
sed -i '2d;4d' file4_modified.txt
#10 end