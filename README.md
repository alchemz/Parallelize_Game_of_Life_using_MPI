# Parallelize_Game_of_Life_using_MPI

Write an MPI program to simulate Conway's Game of Life cellular automaton. 

The program should take as input two values, m (the grid dimension, use an mxm grid) and k (the number of time steps). 

The initial state of the system could be defined in the code. The m x m grid must be partitioned across multiple processes (i.e., each process is responsible for updating m x m/p grid values). 

Use MPI_Sendrecv for inter-process communication of boundary cells. Vary the number of MPI processes, and determine running time for different values of m (e.g., m = 5000, m = 10,000) and k (maybe 10, 100). 

Also, determine the time spent in inter-process communication.

What fraction of the overall running time is spent in inter-process communication?
------------------------------------------
How does the code scale with increasing grid size and increasing MPI process concurrencies?
-------------------------------------------

## Compile The Code
C: mpicc -o prog.exe helloworld.c

C++: mpic++ -o prog.exe helloworld.cxx

## Final compile with optimizations
C: mpicc -o prog.exe -o2 helloworld.c

C++: mpic++ -o prog.exe -o2 helloworld.cxx

# load the module purge
module purge
module load intel impi

## Run the code
mpirun -n NCPUS ./prog.exe
- eg. mpirun -n 4 ./prog.exe

# Run the code on cloud
sqsub -q mpi -n NCPUS -o output.log -r TIME -mpp RAM ./prog.exe
- eg. sqsub -q mpi -n 4 -o out.log -r 5m -mpp 200M ./helloworld.exe

# Run the code with passing values
./prog.exe 2 3

For openmpi
------------
$ module load gcc openmpi

Intel MPI
------------
$ module load intel impi

MPICH
-----------------
$module load gcc mpich

(you can swap out the gcc compiler for pgi in the above module load commands).

You can also view all the available modules using the command "module spider". Please let me know if this takes care of your issue and if you have any additional questions.
## Tutorial
https://www.youtube.com/watch?v=RoQJNx5npF4&list=PL1OsyWvZNuL7OUtmLRAepuIlTHCt8FATk
http://extremecomputingtraining.anl.gov/files/2015/03/mlife-code-jul30-830.pdf
http://www.shodor.org/media/content/petascale/materials/UPModules/GameOfLife/Life_Module_Document_pdf.pdf
https://github.com/msteinkamp/parallel-game-of-life

