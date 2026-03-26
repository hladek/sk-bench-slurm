#!/bin/bash
# activate virtual env 
export PATH="/app/.venv/bin:$PATH"
cd sk-bench
apptainer run --nv ~/sk-bench-slurm/skbench.sif scripts/run.sh
