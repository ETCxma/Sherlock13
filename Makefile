CC = gcc
CFLAGS = -Wall

LDLIBS_CLIENT = -I/usr/include/SDL2 -lSDL2_image -lSDL2_ttf -lSDL2 -lpthread

CLIENT = sh13 
SERVER = server

TARGETS = $(CLIENT) $(SERVER)

CLIENT_SRC = sh13.c 
SERVER_SRC = server.c

all: $(CLIENT) $(SERVER)

$(CLIENT): $(CLIENT_SRC)
	$(CC) -o $@ $^ $(LDLIBS_CLIENT)
	
$(SERVER): $(SERVER_SRC)
	$(CC) -o $@ $^
	
again: clean all

remove:
	make clean
	-rm $(TARGETS)

clean:
	-rm -f $(TARGETS) 