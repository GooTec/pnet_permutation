#!/bin/bash

outdir="scrambled_features_0.5_seed_1"

mkdir -p data/$outdir

echo "Preparing PNET input data ..."
Rscript prepare_scrambled_features.R 0.5 1

echo "Running PNET ..."
for seed in {-1..9}
do
  python main.py $seed $outdir
done
