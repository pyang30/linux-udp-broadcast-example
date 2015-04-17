
OBJS_SERVER = b_server.o
OBJS_CLIENT = b_client.o
LIBS_SERVER = 
LIBS_CLIENT = 

CFLAGS = -c
CC = gcc

PROS = b_client b_server

all: $(PROS)

.c.o:
	$(CC) $(CFLAGS) $<

b_client: $(OBJS_CLIENT)
	$(CC) -o $@ $^ $(LIBS_CLIENT)

b_server: $(OBJS_SERVER)
	$(CC) -o $@ $^ $(LIBS_SERVER)

clean:
	rm -rf $(PROS) $(OBJS_CLIENT) $(OBJS_SERVER)
