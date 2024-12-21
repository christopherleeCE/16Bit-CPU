Simple 16 bit procesor built using hneemann/Digital a list of instructions can be seen in the provided .ods file.
The "16bit CPU" folder should be in the "Digital\lib" directory of the digital installation.
To assemble code compile asm.cpp with "make". Run the program with "./asm in.txt out.txt" or any other
file name of your choice. A example "in.txt" and "out.txt" are provided, whitespaces at the begining and end of
instructions are ignored when assembled. The out.txt can be copied and pasted
into the EEPROM on the left side of CPU.dig.

Any immediate values in the assembly code should be in hexadecimal.
Note that there is little to no validation for valid opcodes, or registers, so if "R8" is given,
it will defualt to 0, which corresponds to register ZERO. additionally, if an invalid opcode is given,
the assembler will interpret it as a label, and the instruction will not be assembled.
