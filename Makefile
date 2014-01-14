all: fortran c

fortran:
	ifort nbody.f90
	time ./a.out 50000000

c:
	gcc -pipe -Wall -O3 -fomit-frame-pointer -march=native -mfpmath=sse -msse3 nbody.c -lm
	time ./a.out 50000000
