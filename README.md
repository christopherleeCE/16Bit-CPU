Simple 16 bit procesor built using hneemann/Digital. A list of instructions can be seen in the provided .odt file.
The "16bit CPU" folder should be in the "Digital\lib" directory of the digital installation.
To assemble code compile asm.cpp with "clear; make clean; make". Run the program with "./asm asm.s program.hex debug.log"
or whatever file name of your choice. Any immediate values in the assembly code should be in hexadecimal. The EEPROM should
already be configured to load the "program.hex", but if it isn't then you can configure in
Edit > Circuit specific settings > Advanced > Program file, and setting the file path of the output file.
