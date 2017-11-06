# Parallelize_Game_of_Life_using_MPI

Write an MPI program to simulate Conway's Game of Life cellular automaton. 

The program should take as input two values, m (the grid dimension, use an mxm grid) and k (the number of time steps). 

The initial state of the system could be defined in the code. The m x m grid must be partitioned across multiple processes (i.e., each process is responsible for updating m x m/p grid values). 

Use MPI_Sendrecv for inter-process communication of boundary cells. Vary the number of MPI processes, and determine running time for different values of m (e.g., m = 5000, m = 10,000) and k (maybe 10, 100). 

Also, determine the time spent in inter-process communication.

What fraction of the overall running time is spent in inter-process communication? How does the code scale with increasing grid size and increasing MPI process concurrencies?

## Tutorial
https://www.youtube.com/watch?v=RoQJNx5npF4&list=PL1OsyWvZNuL7OUtmLRAepuIlTHCt8FATk

