#!/bin/bash

# job configuration 

#SBATCH --job-name="jupyter"     # create a short name for your job
#SBATCH --nodes=1                # node count
#SBATCH --ntasks=1               # total number of tasks across all nodes
#SBATCH --cpus-per-task=40       # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=3G         # memory per cpu-core (4G is default)
#SBATCH --time=02:00:00          # total run time limit (HH:MM:SS)

# Setup Environment 

module load conda/py3-latest
source activate grid

jupyter lab --no-browser --ip "*"
