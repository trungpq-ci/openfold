#! /bin/bash

cd /home/ubuntu/openfold/openfold-prep/
rm -rf /home/ubuntu/openfold/openfold-prep/out/
mkdir -p /home/ubuntu/openfold/openfold-prep/out
CONDA_LIB='/home/ubuntu/conda_docker/envs/foldtr/bin/'

#    /home/ubuntu/openfold/data/test_fasta/ \

python3 scripts/precompute_alignments.py \
    /home/ubuntu/openfold/data/pdb_mmcif_test/ \
    /home/ubuntu/openfold/openfold-prep/out \
    --uniref90_database_path /home/ubuntu/openfold/openfold-main/data/uniref90/uniref90.fasta \
    --mgnify_database_path /home/ubuntu/openfold/openfold-main/data/mgnify/mgy_clusters_2018_12.fa \
    --pdb70_database_path /home/ubuntu/openfold/openfold-main/data/pdb70/pdb70 \
    --uniclust30_database_path /home/ubuntu/openfold/openfold-main/data/uniclust30/uniclust30_2018_08/ \
    --jackhmmer_binary_path ${CONDA_LIB}/jackhmmer \
    --hhblits_binary_path ${CONDA_LIB}/hhblits \
    --hhsearch_binary_path ${CONDA_LIB}/hhsearch \
    --kalign_binary_path ${CONDA_LIB}/kalign \
    --use_small_bfd True \
    --bfd_database_path  /home/ubuntu/openfold/openfold-main/data/small_bfd/bfd-first_non_consensus_sequences.fasta \
    --no_tasks 8 \
    --cpus_per_task 4


    #--pdb_mmcif_database_path /home/ubuntu/openfold/openfold-main/data/pdb_mmcif/mmcif_files/ \
