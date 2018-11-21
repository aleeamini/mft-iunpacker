CFLAGS=  -g 
OBJS= sha1.o
LIBS= -lsqlite3 -lmman

all: ideviceunback

ideviceunback: $(OBJS) ideviceunback.c
	gcc $(CFLAGS) ideviceunback.c $(OBJS) -o ideviceunback  $(LIBS)

clean:
	rm ideviceunback *.o

install: ideviceunback
	cp ideviceunback /usr/local/bin
