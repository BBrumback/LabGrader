#!/bin/bash

#This is a program that given a file containing all zipped student submissions
# will unzip and run them. The output will be stored in .txt files so you can
# review what happened if there was a compiler or runtime problem.

#for the most part the script is pretty simple but if you have any questions
# or ideas on how to improve it let me know!

#if you are on unix dont forget to give this file run permissions with:
#chmod graderP3.bat +x

#Loops over all zipped files
for i in *.zip; do 

    #unzips them
    unzip $i
    #rm $i

    #remove the MACOSX file that some zips have
    rm __MACOSX -r

    #prints out the name of the file
    fileName=${i%.zip}
    echo
    echo
    echo $fileName
    echo
    echo

    #copies everything out of the filecho "Suddent missnamed file"e
    if [ -e $fileName ]
    then
	cd $fileName
	cp * ..
	cd ..
    fi

    #Remove an extra files students might have included
    #right now I dont know of any extra files students might add

    #prints out the contents of the ID file so you can track the progress
    #of the script
    cat ID.txt
    
    #creates outpyt files where compiler or runtime errors will be stored
    touch output.txt
    touch javac.txt

    #compiles the files one by one to prevent a compiler error from one
    #file preventing all files from being compiled
    javac -cp .:junit-4.12.jar Alphabet.java 2> javac.txt
    javac -cp .:junit-4.12.jar AlphabetException.java 2>> javac.txt
    javac -cp .:junit-4.12.jar BadIndexAlphabetException.java 2>> javac.txt
    javac -cp .:junit-4.12.jar MissingCharAlphabetException.java 2>> javac.txt
    javac -cp .:junit-4.12.jar Cipher.java 2>> javac.txt
    javac -cp .:junit-4.12.jar SymmetricCipher.java 2>> javac.txt
    javac -cp .:junit-4.12.jar CaesarCipher.java 2>> javac.txt
    javac -cp .:junit-4.12.jar VigenereCipher.java 2>> javac.txt
    javac -cp .:junit-4.12.jar MorseCipher.java 2>> javac.txt
    

    #Compiles tests
    javac -cp .:junit-4.12.jar AlphabetTests.java 2> junit.txt
    javac -cp .:junit-4.12.jar ExceptionTests.java 2>> junit.txt
    javac -cp .:junit-4.12.jar SymmetricCipherTests.java 2>> junit.txt
    javac -cp .:junit-4.12.jar CaesarCipherTests.java 2>> junit.txt
    javac -cp .:junit-4.12.jar VigenereCipherTests.java 2>> junit.txt
    javac -cp .:junit-4.12.jar MorseCipherTests.java 2>> junit.txt
    javac -cp .:junit-4.12.jar P3Tests.java 2>> junit.txt

    #runs each test individually for the same reason above. the first test
    #run will test all files.
    
    #echo then pile the data into the output file so you can tell
    #where each test starts and ends
    echo AllTests > output.txt
    java -cp .:junit-4.12.jar P3Tests >> output.txt
    echo >> output.txt
    echo '-----------------------------------------------------------------------------------------------------------' >> output.txt
    echo >> output.txt
    echo Alphabet >> output.txt
    java -cp .:junit-4.12.jar AlphabetTests >> output.txt
    echo Exceptions >> output.txt
    java -cp .:junit-4.12.jar ExceptionTests >> output.txt
    echo SymmetricCipher >> output.txt
    java -cp .:junit-4.12.jar SymmetricCipherTests >> output.txt
    echo CaesarCipher >> output.txt
    java -cp .:junit-4.12.jar CaesarCipherTests >> output.txt
    echo VigenereCipher >> output.txt
    java -cp .:junit-4.12.jar VigenereCipherTests >> output.txt
    echo MorseCipher >> output.txt
    java -cp .:junit-4.12.jar MorseCipherTests >> output.txt

    #remove all class files
    rm *.class

    #make a file for that students work
    javaFiles=${fileName}-javaFiles
    mkdir $javaFiles

    #move all work as well as output files to the new student folder
    #this helps with the cluder some students submit
    mv output.txt ./$javaFiles
    mv javac.txt ./$javaFiles
    mv junit.txt ./$javaFiles
    mv ID.txt ./$javaFiles
    mv Alphabet.java ./$javaFiles
    mv AlphabetException.java ./$javaFiles
    mv BadIndexAlphabetException.java ./$javaFiles
    mv CaesarCipher.java ./$javaFiles
    mv Cipher.java ./$javaFiles
    mv MissingCharAlphabetException.java ./$javaFiles
    mv MorseCipher.java ./$javaFiles
    mv SymmetricCipher.java ./$javaFiles
    mv VigenereCipher.java ./$javaFiles

    #remove the unzipped student folder
    rm $fileName -r
done
