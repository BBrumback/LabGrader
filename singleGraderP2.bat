#!/bin/bash

touch output.txt
touch javac.txt

javac -cp .:junit-4.12.jar Coord.java 2> javac.txt
javac -cp .:junit-4.12.jar Tile.java 2>> javac.txt
javac -cp .:junit-4.12.jar Dir.java 2>> javac.txt
javac -cp .:junit-4.12.jar BoardOptions.java 2>> javac.txt
javac -cp .:junit-4.12.jar Board.java 2>> javac.txt

javac -cp .:junit-4.12.jar CoordTests.java 2> junit.txt
javac -cp .:junit-4.12.jar TileTests.java 2>> junit.txt
javac -cp .:junit-4.12.jar DirTests.java 2>> junit.txt
javac -cp .:junit-4.12.jar BoardOptionsTests.java 2>> junit.txt
javac -cp .:junit-4.12.jar BoardTests.java 2>> junit.txt
    

echo Coords >> output.txt
java -cp .:junit-4.12.jar CoordTests >> output.txt
echo Tiles >> output.txt
java -cp .:junit-4.12.jar TileTests >> output.txt
echo BoardOptions >> output.txt
java -cp .:junit-4.12.jar BoardOptionsTests >> output.txt
echo Dir >> output.txt
java -cp .:junit-4.12.jar DirTests >> output.txt
echo Board >> output.txt
java -cp .:junit-4.12.jar BoardTests >> output.txt
echo P2Tests >> output.txt
java -cp .:junit-4.12.jar P2Tests >> output.txt
    
