# about

The `biom2matlab.py` converts the biom and mapping files into csv files that can easily be read into Matlab. Note that Matlab does not natively handle JSON format files, which makes reading the biom file a bit tedious. The output of `biom2matlab.py` is `data.txt` and `labels.txt`, which are easily readable by Matlab. The Matlab script `pcoa_gut_mf.m` implements Principal Coordinate Analysis (PCoA) on `data.txt`. The `SEX` of the sample is used to observe the differences between the microbiomes. 

# what should I expect?

![alt tag](https://raw.github.com/gditzler/eces436-dimred/master/matlab/output.jpg)
 
