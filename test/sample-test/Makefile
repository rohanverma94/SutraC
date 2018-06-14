
CC = g++

CFLAGS  = -Wall -std=c++1y #C++14 standard 

  # the build target executable:
TARGET = factorial_test

all: $(TARGET)

$(TARGET): $(TARGET).cpp
		$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).cpp

clean:
		$(RM) $(TARGET)