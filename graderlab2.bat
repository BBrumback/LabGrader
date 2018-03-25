#!/bin/bash

unzip *.zip
rm *.zip

rm __MACOSX -r

cd */
cp * ..
cd ..

cat ID.txt

javac -cp .:junit-4.12.jar:. *.java
java -cp .:junit-4.12.jar:. Lab3Tests 

rm *.class
rm Date.java
rm Person.java
rm ScannerPractice.java
rm sumReals_File_5.txt
rm sumReals_File_4.txt
rm sumReals_File_3.txt
rm sumReals_File_2.txt
rm sumReals_File_1.txt
rm sumReals_File_0.txt

rm ID.txt
