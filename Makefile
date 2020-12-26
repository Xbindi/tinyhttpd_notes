all: httpd client
#	LIBS = -lpthread #-lsocket 
httpd: httpd.c
	gcc -g -W -Wall  -o $@ $< -lpthread

client: simpleclient.c
	gcc -W -Wall -o $@ $<
clean:
	rm httpd client