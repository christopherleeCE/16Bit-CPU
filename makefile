# Compiler and flags
CXX = g++
CXXFLAGS = -Wall -std=c++11

# Target executable name
TARGET = asm

# Source file(s)
SRC = asm.cpp

# Default target
all: $(TARGET)

# Rule to compile and link the source file directly into the executable
$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET)

# Clean rule to remove the executable
clean:
	rm -f $(TARGET)

# Phony targets (not actual file names)
.PHONY: all clean