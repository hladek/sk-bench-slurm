#!/bin/bash
#SBATCH --job-name=train_model
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --partition=GPU
#SBATCH --account=perun250114
#SBATCH --qos=perun250114
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=8
#SBATCH --mem=48G
#SBATCH --time=24:00:00

# Activate scratch (ONE LINE!)
#source .activate_scratch

srun bash run-in-apptainer.sh
