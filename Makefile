CC=gcc

main: AlphaBeta.o BoxThrottle.o main.c
	$(CC) AlphaBeta.o BoxThrottle.o main.c -o main

AlphaBeta.o: AlphaBeta.c BoxThrottle.o
	$(CC) -c AlphaBeta.c

BoxThrottle.o: BoxThrottle.c
	$(CC) -c BoxThrottle.c

clean:
	rm *.o
	rm main

run:
	./main
