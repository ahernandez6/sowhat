#!/bin/bash

#SBATCH -t 14-00:00:00

module load R/3.0.0;
module load phylobayes/3.3f;

perl sowhat --rax=/users/shchurch/scratch/FB_analyses/raxmlHPC --garli=/users/shchurch/scratch/FB_analyses/Garli-2.01 --seqgen=/users/shchurch/scratch/FB_analyses/seq-gen --aln=published_datasets/Sullivan12S.phy --constraint=published_datasets/Sullivan12S.H0.tre --model=GTRGAMMAI --dir=analysis/B67 --name=B67 --reps=1000 --initial >output.B67

perl sowhat --rax=/users/shchurch/scratch/FB_analyses/raxmlHPC --garli=/users/shchurch/scratch/FB_analyses/Garli-2.01 --seqgen=/users/shchurch/scratch/FB_analyses/seq-gen --aln=published_datasets/Sullivan12S.phy --constraint=published_datasets/Sullivan12S.H0.tre --model=GTRGAMMAI --dir=analysis/B67 --name=B67 --reps=1000 --usegentree=published_datasets/Sullivan12S.B67.susko.tre --restart >output.B67