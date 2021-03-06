#!/usr/bin/env bash

export OMP_NUM_THREADS=1  # each process launches only one thread

mpirun -n 3 \
    hominid \
        ../data/hominid_example_taxon_table_input.txt \
        ../data/hominid_example_snp_input.rvcf \
        ../hominid_example_output.rvcf \
        arcsinsqrt \
        -1 \
        100 \
        no_permutation \
        --maf-lower-cutoff 0.2
