#/bin/bash

for seed in {1..1000}; do
  scripts/run_rscript_docker.sh scripts/load_data_original.R
  scripts/run_rscript_docker.sh scripts/label_permutation.R FALSE $seed
  scripts/run_pnet_docker.sh -e pnet_shuffled_each -l $seed -u $seed
done

