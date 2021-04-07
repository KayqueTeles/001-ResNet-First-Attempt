#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --time=12:00:00
#SBATCH --cpus-per-task=20
#SBATCH --job-name=Resnet01
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=rainxclouds@yahoo.com.br

cd /home/kayque/LENSLOAD/

export OMP_NUM_THREADS=$SLURM_NTASKS

module load python
module load softwares/anaconda3/5.0-intel-2018.0
source activate legion

srun python -u resnet01.py

