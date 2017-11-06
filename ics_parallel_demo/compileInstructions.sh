#!/bin/bash

#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#
# compileInstructions.sh
#
# Adam Lavely
# adam.lavely@psu.edu
# 
# Created for ICS Training Seminar 2
# Fall 2017
#
# Run with ./compleInstructions.sh
#
# Note that this is ready to submit as a
# job using sampleACI-B.pbs
#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#

#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#
# Set up the Environment
module purge
module load intel/16.0.3   
module load impi/5.1.3

#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#
# Compile the code
mpicc -o mpi_hello_world.out mpi_hello_world.c

#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#
# Run the code
mpirun -np 4 ./mpi_hello_world.out 


