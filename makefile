all : juego_de_la_vida

juego_de_la_vida : principal.o funciones.o 
	gcc principal.o funciones.o -o juego_de_la_vida

principal.o : principal.c hdr.h
	gcc -c principal.c -o principal.o -std=c99

funciones.o : hdr.h funciones.c
	gcc -c funciones.c -o funciones.o -std=c99