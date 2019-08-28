#!/bin/bash -l
# The -l above is required to get the full environment with modules

# Set the allocation to be charged for this job
# not required if you have set a default allocation
#SBATCH -A edu19.summer

# The name of the script is myjob
#SBATCH -J myjob

# 10 hours wall-clock time will be given to this job
#SBATCH -t 00:05:00

# Number of nodes
#SBATCH --nodes=1
# Number of MPI processes per node
##SBATCH --ntasks-per-node=32

##SBATCH --reservation=summer-2019-08-24

##SBATCH -e error_file.e
##SBATCH -o output_file.o

# Run the executable named myexe
# and write the output into my_output_file
srun -n 1 ./lab02_ex3_6.out images/lab02.bmp
