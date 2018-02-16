#!/bin/bash

unzip *.zip
rm *.zip

rm __MACOSX -r

cd */
cp * ..
cd ..

cat *.txt

rm TaskHonorsTest.java

javac -cp .:junit-4.12.jar *.java
java -cp .:junit-4.12.jar P1Tests

rm *.class
rm TaskHonors.java
rm *.txt

mkdir javaFiles

mv Task1.java ./javaFiles
mv Task2.java ./javaFiles
mv Task3.java ./javaFiles
mv Task4.java ./javaFiles
mv Task5.java ./javaFiles
