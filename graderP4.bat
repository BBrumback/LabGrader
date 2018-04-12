#!/bin/bash

#This is a program that given a file containing all zipped student submissions
# will unzip and run them. The output will be stored in .txt files so you can
# review what happened if there was a compiler or runtime problem.

#for the most part the script is pretty simple but if you have any questions
# or ideas on how to improve it let me know!

#if you are on unix dont forget to give this file run permissions with:
#chmod graderP3.bat +x

#Remove an extra files students might have included
#right now I dont know of any extra files students might add

#creates outpyt files where compiler or runtime errors will be stored
touch output.txt
touch javac.txt

#compiles the files one by one to prevent a compiler error from one
#file preventing all files from being compiled
javac -cp .:junit-4.12.jar Coord.java 2> javac.txt
javac -cp .:junit-4.12.jar Direction.java 2>> javac.txt
javac -cp .:junit-4.12.jar Follower.java 2>> javac.txt
javac -cp .:junit-4.12.jar GreenSlime.java 2>> javac.txt
javac -cp .:junit-4.12.jar Haze.java 2>> javac.txt
javac -cp .:junit-4.12.jar Map.java 2>> javac.txt
javac -cp .:junit-4.12.jar Panic.java 2>> javac.txt
javac -cp .:junit-4.12.jar Passable.java 2>> javac.txt
javac -cp .:junit-4.12.jar Person.java 2>> javac.txt
javac -cp .:junit-4.12.jar Representable.java 2>> javac.txt
javac -cp .:junit-4.12.jar Spot.java 2>> javac.txt
javac -cp .:junit-4.12.jar Status.java 2>> javac.txt
javac -cp .:junit-4.12.jar Thing.java 2>> javac.txt
javac -cp .:junit-4.12.jar Threat.java 2>> javac.txt
javac -cp .:junit-4.12.jar Zoolander.java 2>> javac.txt


#Compiles tests
javac -cp .:junit-4.12.jar CoordTests.java 2> junit.txt
javac -cp .:junit-4.12.jar EnumerationTests.java 2>> junit.txt
javac -cp .:junit-4.12.jar MapTests.java 2>> junit.txt
javac -cp .:junit-4.12.jar PanicTests.java 2>> junit.txt
javac -cp .:junit-4.12.jar FollowerTests.java 2>> junit.txt
javac -cp .:junit-4.12.jar GreenSlimeTests.java 2>> junit.txt
javac -cp .:junit-4.12.jar HazeTests.java 2>> junit.txt
javac -cp .:junit-4.12.jar InterfaceTests.java 2>> junit.txt
javac -cp .:junit-4.12.jar ZoolanderTests.java 2>> junit.txt
javac -cp .:junit-4.12.jar HonorsTests.java 2>> junit.txt
javac -cp .:junit-4.12.jar P4Tests.java 2>> junit.txt

#runs each test individually for the same reason above. the first test
#run will test all files.

#echo then pile the data into the output file so you can tell
#where each test starts and ends
echo AllTests > output.txt
java -cp .:junit-4.12.jar P4Tests >> output.txt
echo >> output.txt
echo '-----------------------------------------------------------------------------------------------------------' >> output.txt
echo >> output.txt
echo Coord >> output.txt
java -cp .:junit-4.12.jar CoordTests >> output.txt
echo Exceptions >> output.txt
java -cp .:junit-4.12.jar EnumerationTests >> output.txt
echo Map >> output.txt
java -cp .:junit-4.12.jar MapTests >> output.txt
echo Follower >> output.txt
java -cp .:junit-4.12.jar FollowerTests >> output.txt
echo GreenSlime >> output.txt
java -cp .:junit-4.12.jar GreenSlimeTests >> output.txt
echo Haze >> output.txt
java -cp .:junit-4.12.jar HazeTests >> output.txt
echo Interface >> output.txt
java -cp .:junit-4.12.jar InterfaceTests >> output.txt
echo Zoolander >> output.txt
java -cp .:junit-4.12.jar ZoolanderTests >> output.txt
echo Avoid >> output.txt
java -cp .:junit-4.12.jar HonorsTests >> output.txt
echo Panic >> output.txt
java -cp .:junit-4.12.jar PanicTests >> output.txt



rm *.class

