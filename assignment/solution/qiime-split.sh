#!/bin/bash -l
#$ -cwd
#$ -M gcd34@drexel.edu
#$ -P rosenPrj
#$ -q all.q@@intelhosts 
#$ -j y

module load python/2.7.6
biom_fp=study_550_closed_reference_otu_table.biom
map_fp=study_550_mapping_file.txt

split_otu_table.py -i $biom_fp -m $map_fp -o result/ -f COMMON_SAMPLE_SITE

