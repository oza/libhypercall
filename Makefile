SHELL = /bin/sh

bindir = ${exec_prefix}/bin
datadir = ${prefix}/share

TARGET	= libhypercall
SRCS	= libhypercall.c
OBJS	= libhypercall.o

CC = gcc
DEFS = -DHAVE_CONFIG_H
LIBS = 

#INSTALL = @INSTALL@
#INSTALL_PROGRAM = @INSTALL_PROGRAM@
#INSTALL_DATA = @INSTALL_DATA@

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $(OBJS) $(LIBS)

.c.o:
	$(CC) $(DEFS) -c -o $@ $<

install: $(TARGET)
	$(INSTALL_PROGRAM) $< $(bindir)

clean: 
	rm -rf $(OBJS) $(TARGET)
