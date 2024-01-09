#!/bin/bash
#To create a directory named ProjectData
clear
cd
if [ ! -d ProjectData ]; then
	echo "projectData does not exist. Creating it..."
	mkdir ProjectData
fi
echo "ProjectData directory is created"

cd ProjectData
#To create three directories inside the projectData
if [ ! -d Reports ] || [ ! -d Logs ] || [ ! -d Data ];then
	echo "Reports does not exist. Creating it..."
	mkdir Reports
	echo "Logs does not exist. Creatig it..."
	mkdir Logs
	echo "Data does not exist. Creating it..."
	mkdir Data
fi
echo "The three sub-directories are created"
ls -l

#To create 10 files inside Data
cd Data
if [ ! -e file1.txt ]; then
#starting of a for loop
  for i in {1..10}
  do
	touch file$i.txt
	echo -e "gqiudcgiu gsugicg \n sugiugg uguidg kgkags\nugiug iusdfiug iuvguisgi \n uggsdusg" > file$i.txt
  done
fi
echo "In the Data directory 10 files are created"
cd ..
cd Reports
#To count number of lines in each file
if [ -e summary.txt ]; then
  echo "summary file exist. Creating it...\n Removing it and creating a new one"
  rm summary.txt
  touch summary.txt
fi
cd ..
cd Data
#writing the number of lines in each file using a for loop
for i in {1..10}
 do
   echo "file$i contains  $(wc -l) lines"  >>  /home/xpmini03/ProjectData/Reports/summary.txt
 done
 cat /home/xpmini03/ProjectData/Reports/summary.txt
#creating the logdata file
cd ..
cd Logs
if [ ! -e logdata.txt ]; then
    logdata.txt
fi
echo "The time and date when the program is running is $(date)" >> logdata.txt
# to print the logdata recorded
cat logdata.txt

