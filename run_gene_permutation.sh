#/bin/bash

for seed in {101..1000}; do
  scripts/run_rscript_docker.sh scripts/load_data_original.R
  scripts/run_rscript_docker.sh scripts/gene_permutation.R
  scripts/run_pnet_docker.sh -e pnet_shuffled_each -l $seed -u $seed
done
