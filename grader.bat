#!/bin/bash

unzip *.zip
rm *.zip

cd */
cp * ..
cd ..

cat *.txt

javac -cp .:junit-cs211.jar *.java
java -cp .:junit-cs211.jar Tester1e

rm CSWisdom.java
rm CSWisdom.class
rm HelloLab.java
rm HelloLab.class
rm Tester1e.class
rm *.txt
