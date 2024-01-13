#!/bin/bash
#To create a directory named ProjectData in user's home directory
clear
cd
if [ ! -d ProjectData ]; then
   echo "projectData does not exist. Creating it..."
   mkdir ProjectData
else
   echo "ProjectData directory exists"
fi
cd ProjectData
#To create three directories inside the projectData
if [ ! -d Reports ];then
   echo "Reports does not exist. Creating it..."
   mkdir Reports
else
   echo "Reports directory exists"
fi
if [ ! -d Logs ];then
   echo "Logs does not exist. Creatig it..."
   mkdir Logs
else
   echo "Logs directry exists"
fi
if [ ! -d Data ];then
   echo "Data does not exist. Creating it..."
   mkdir Data
else
   echo "Data directory exists"
fi
echo "The three sub-directories are created"
ls -l
#To create 10 files inside Data
cd Data

echo "In the Data directory 10 files are created"
cd ..
cd Reports
#To count number of lines in each file
if [ -e summary.txt ]; then
  echo -e  "summary file exist.\n Removing it and creating a new one"
  rm summary.txt
  touch summary.txt
else
   touch summary.txt
fi
#File Processing
cd ..
cd Data

#creating the logdata file
cd ..
cd Logs
if [ ! -e logdata.txt ]; then

cat logdata.txt
