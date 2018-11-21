CFLAGS=  -g 
OBJS= sha1.o
LIBS= -lsqlite3 -lmman

all: mftiunpacker

ideviceunback: $(OBJS) mftiunpacker.c
	gcc $(CFLAGS) mftiunpacker.c $(OBJS) -o mftiunpacker  $(LIBS)

clean:
	rm mftiunpacker *.o

install: mftiunpacker
	cp mftiunpacker /usr/local/bin
