#!/bin/bash

for i in *.zip; do 
    
    unzip $i
    #rm $i
    
    rm __MACOSX -r

    fileName=${i%.zip}
    echo
    echo
    echo $fileName
    echo
    echo
    
    cd $fileName
    cp * ..
    cd ..

    rm Coor.java
    rm HonorsTests.java
    
    cat ID.txt
    
    rm TaskHonorsTest.java

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
    javac -cp .:junit-4.12.jar P2Tests.java 2>> junit.txt
    
    echo Coords > output.txt
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

    rm *.class

    javaFiles=${fileName}-javaFiles
    
    mkdir $javaFiles

    mv output.txt ./$javaFiles
    mv javac.txt ./$javaFiles
    mv junit.txt ./$javaFiles
    mv ID.txt ./$javaFiles
    mv Board.java ./$javaFiles
    mv BoardOptions.java ./$javaFiles
    mv Coord.java ./$javaFiles
    mv Dir.java ./$javaFiles
    mv Tile.java ./$javaFiles

    rm $fileName -r
done
