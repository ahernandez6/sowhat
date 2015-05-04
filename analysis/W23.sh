#!/bin/bash

#SBATCH -t 14-00:00:00

module load R/3.0.0;
module load phylobayes/3.3f;

perl sowhat --rax=/users/shchurch/scratch/FB_analyses/raxmlHPC --garli=/users/shchurch/scratch/FB_analyses/Garli-2.01 --seqgen=/users/shchurch/scratch/FB_analyses/seq-gen --aln=published_datasets/wangetal2008.phy --constraint=published_datasets/wangetal2008.tre --dir=analysis/W23 --name=W23 --reps=500 --model=GTRGAMMA --rerun >output.W23