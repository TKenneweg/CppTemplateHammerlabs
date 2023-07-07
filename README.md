This is a scalable standard template for C++ projects using CMake and Ninja. Ubuntu use only. 

The main contributions are two scripts "runCmake.sh" and "compileAndRun.sh". 

The intended workflow is as follows: 

1. Run "runCmake.sh" once with the name of you cpp file that includes your main function as an argument. 
The cpp file should be located in in mainfiles/. This will create a complete configuration
in a folder called build{nameofyourmainfile}. If this folder does not exist yet, create it
in the same folder as the script. "runCmake.sh" will also save the name of the cpp file in CurrentExecutable.txt

2. Run "compileAndRun.sh" to compile and run your project. Every time you change code you just run the script. 
If you add additional file in src/ you need to rerun "runCmake.sh". 


- main.cpp contains an example using a 3rd party library (opencv)
- test.cpp is just a hello world example
- in src/ there is a very simple adder example you can use in test or main

For questions on how to use this template contact Tristan. 
