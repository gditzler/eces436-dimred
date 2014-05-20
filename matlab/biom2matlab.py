#!/usr/bin/env python 
import sys
sys.path.append("../python/")
import bmu 
import utils 

biom_fp = "../data/study_550_closed_reference_otu_table_feces.biom"
map_fp = "../data/mapping_feces.txt"
label_fp = "labels.txt"
data_fp = "data.txt"
feat_fp = "features.txt"
phenotype = "SEX"

def main():
  data, sample_ids, otus_names = bmu.load_biom(biom_fp)
  meta_data = bmu.load_map(map_fp)
  phenotype_ids = utils.return_phenotypes(sample_ids, meta_data, phenotype)
  write_labels(phenotype_ids, label_fp)
  write_data(data, data_fp)
  write_labels(otus_names, feat_fp)
  return None 

def write_labels(labels, fname):
  f = open(fname, "w")
  for ell in labels:
    f.write(ell + "\n")
  f.close()
  return None

def write_data(data, fname):
  f = open(fname,"w")
  for x in data:
    for y in x[:-1]:
      f.write(str(y) + ",")
    f.write(str(x[-1]) + "\n")
  f.close()
  return None 

if __name__ == "__main__":
  main()
