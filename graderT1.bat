#!/bin/bash

unzip *.zip
rm *.zip

rm __MACOSX -r

cd */
cp * ..
cd ..

cat *.txt

javac -cp .:junit-4.12.jar:. *.java
java -cp .:junit-4.12.jar:. Lab4Tests 

rm *.class
rm Set.java

rm *.txt
