CC=gcc
CFLAGS=-Wall -Wextra -std=c99

TARGET=hello

all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c

clean:
	rm -f $(TARGET)
