all: fortran c c3

fortran:
	ifort -O2 -xHost nbody.f90
	time ./a.out 50000000

c:
	gcc -pipe -Wall -O3 -fomit-frame-pointer -march=native -mfpmath=sse -msse3 nbody.c -lm
	time ./a.out 50000000

c3:
	gcc -pipe -Wall -O3 -fomit-frame-pointer -march=native -mfpmath=sse -msse3 nbody3.c -lm
	time ./a.out 50000000
