# These are my scripts that I use to do things.

## ubuntu.sh 
This script is used to bring up a docker image of ubuntu. ubuntu:latest is the image name and all this does is it opens an ubuntu shell in terminal which contains my pwd in a test folder.

## valgrind.sh  
This uses the same docker image as above which has valgrind on it. It will use the first command line argument after the file name as the name of the file which contains the main function in it. Anything after that is used as a command line argument for the program which is being run inside valgrind. The file specified in the commandline is compiled in ubuntu and then run with valgrind.
