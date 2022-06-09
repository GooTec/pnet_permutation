#!/bin/bash

outdir="scrambled_features_0.05_seed_0"

mkdir -p data/$outdir

echo "Preparing PNET input data ..."
Rscript prepare_scrambled_features.R 0.05 0

echo "Running PNET ..."
for seed in {-1..9}
do
  python main.py $seed $outdir
done
