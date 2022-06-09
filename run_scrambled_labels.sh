#!/bin/bash

outdir="scrambled_labels"

mkdir -p data/$outdir

echo "Preparing PNET input data ..."
Rscript prepare_scrambled_labels.R TRUE 0

echo "Running PNET ..."
for seed in {-1..9}
do
  python main.py $seed $outdir
done
