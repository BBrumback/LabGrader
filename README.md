These are some simple grading scripts that I have created to help with the repeated commands you need to type when grading. graderP2 and onward work with any number of downloaded zip files. These will unzip and run the required commands on a single students files. Once complete it will save all this data in a file with the students name. If everything runs correctly javac.txt and junit.txt will be empty. Output will show you each of the tester files output starting with the overall tester.

Some students might incorrectly name their files (the extractor is looking for a file named the same as the zipped file). if this is the case, the easiest thing to do will probably be to rename that file for them and rerun the script. In the past I have grouped these students' files in a different directory and reran everything. You could also create a script that runs for a single submission which I have done in the past but that can be extra work.


These will only work on a command line with bash and you need to have the unzip program installed.


To run these you need to used ./FILENAME.bat. you will need to give the file run permissions by typing 'chmod +x FILENAME.bat'


if you have any questions let me know!
Ben Brumback
