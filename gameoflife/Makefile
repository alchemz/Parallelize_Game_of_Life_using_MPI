# Code prefix
PROGRAM_PREFIX=gameoflife

# Compilers and flags
CC=gcc
MPICC=mpicc
#CFLAGS=-Wall --pedantic # Uncomment to show warnings
#CFLAGS+=-DSHOW_RESULTS # Uncomment to make the program print its results

# Source files
SRCS=$(PROGRAM_PREFIX).c

# OpenMP
OPENMP_FLAGS=-fopenmp

# MPI
MPI_FLAGS=-DMPI


EXECUTABLES=$(PROGRAM_PREFIX).{serial,openmp,mpi}

# Make rules
$(PROGRAM_PREFIX).serial: $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) -o $(PROGRAM_PREFIX).serial

$(PROGRAM_PREFIX).openmp: $(SRCS)
	$(CC) $(CFLAGS) $(OPENMP_FLAGS) $(SRCS) -o $(PROGRAM_PREFIX).openmp

$(PROGRAM_PREFIX).mpi: $(SRCS)
	$(MPICC) $(CFLAGS) $(MPI_FLAGS) $(SRCS) -o $(PROGRAM_PREFIX).mpi

clean:
	rm -f $(EXECUTABLES) *.o

serial:
	make $(PROGRAM_PREFIX).serial

openmp:
	make $(PROGRAM_PREFIX).openmp

mpi:
	make $(PROGRAM_PREFIX).mpi

all:
	make clean
	make $(EXECUTABLES)
