# Permutation Test of Biologically Informed Neural Network (BINN) 

## Docker set up 
```bash
docker pull ghcr.io/csbg/pnet-container:1.0.0
```

## Permutation Experiment
```bash
#!/bin/bash

for seed in {101..1000}; do
  scripts/run_rscript_docker.sh scripts/load_data_original.R
  scripts/run_rscript_docker.sh scripts/gene_permutation.R
  scripts/run_pnet_docker.sh -e pnet_shuffled_each -l $seed -u $seed
done
```


## Label Permutation
```bash
#!/bin/bash

for seed in {1..1000}; do
  scripts/run_rscript_docker.sh scripts/load_data_original.R
  scripts/run_rscript_docker.sh scripts/label_permutation.R FALSE $seed
  scripts/run_pnet_docker.sh -e pnet_shuffled_each -l $seed -u $seed
done
```
