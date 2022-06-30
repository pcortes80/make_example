# Makefile para la calculadora
#
# **** regla de oro *****
# objetivo: dependencias
# 	instrucciones
# ***********************

# Make Help
# https://www.gnu.org/savannah-checkouts/gnu/make/manual/make.html

# Variables
OBJS = main.o salida.o calculadora.o
BINARY = programa

# Variables del compilador
CFLAGS = -g -Wall

# Variables del enlazador (liker)
# LDFLAGS =  


# Se acostumbra a poner all como objetivo general
# para hacer alguna accion si no se le pone ningun
# argumento al comando make#
all: programa

# Esta regla compila el programa principal
programa: $(OBJS)
	gcc -o $(BINARY) $(OBJS)

main.o: main.c funciones.h
# esto no es necesario porque es una regla implicita
#	gcc $(CFLAGS) -c main.c

salida.o: salida.c funciones.h
# esto no es necesario porque es una regla implicita
#	gcc $(CFLAGS) -c salida.c.

calculadora.o: calculadora.c funciones.h
# esto no es necesario porque es una regla implicita
#	gcc $(CFLAGS) -c calculadora.c

# Phony rules = regla ficticia
# borra los archivos .o
clean:
	rm -f $(BINARY) $(OBJS)
