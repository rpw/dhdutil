SRC = dhdu.c dhdu_linux.c bcmutils.c miniopt.c
TARGET = dhdutil

CFLAGS = -Wall -Werror -Wno-unused-parameter
CFLAGS += -Iinclude/
CFLAGS += -DSDTEST -DTARGETENV_android -Dlinux -DLINUX

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $^
