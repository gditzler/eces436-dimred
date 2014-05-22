# Getting Started

This assignment use QIIME for some of the data preprocessing, which means you must have QIIME installed on your computer. If you have a Mac or Linux machine the read about the installation [here](https://github.com/biocore/qiime). THIS IS NOT THE RECOMMENDED OPTION. You should use your proteus account and load the required QIIME and Python modules. 


# Part 1 - Splitting up the data

## Setting up QIIME on proteus

You will get an error when you run `pip` with QIIME, but lets not worry about that  
```bash 
  module load python/2.7.6
  pip install --install-option="--prefix=$HOME/.local/" cogent
  pip install --install-option="--prefix=$HOME/.local/" qiime 
```

Then you need to set up some environmental variables
```bash 
  echo "export PATH=$HOME/.local/bin/:$PATH" >> $HOME/.bashrc
  echo "export PYTHONPATH=$HOME/.local/lib/:$PYTHONPATH" >> $HOME/.bashrc
  source $HOME/.bashrc
```

If it worked, this should print `1.8.1`
```bash 
  python -c "import qiime;print qiime.__version__"
```

You should not run commands on any of the login nodes of proteus and you run the risk of having the admins cancel your programs if they see you doing this. Run all commands using the `qsub` command.

## The assignment 

* write a shell script to split the biom files (i.e., OTU table) grouped by `COMMON_SAMPLE_SITE`
* Submit your job to proteus. You should have four map and biom files if your script worked correctly.
* Use `matlab/biom2matlab.py` to convert the four biom files to csv files. Lets the `labels` be the gender of the individual.  

# Part 2 - Performing PCoA and plotting the results 

* Using the result from `Part 1`, perform PCoA using the Hellinger and Bray-Curtis distances for each of the four csv files. 
* Plot your results in 2D. Label the samples by the sex of the individuals for each of the sample sites. 

