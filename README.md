Simple 16 bit procesor built using hneemann/Digital a list of instructions can be seen in the provided .odt file.
The "16bit CPU" folder should be in the "Digital\lib" directory of the digital installation.
To assemble code compile asm.cpp with "clear; make clean; make". Run the program with "./asm asm.s program.hex debug.log"
file name of your choice. A example "in.txt" and "out.txt" are provided. The out.txt can be copied and pasted
into the EEPROM on the left side of CPU.dig. Any immediate values in the assembly code should be in hexadecimal.
