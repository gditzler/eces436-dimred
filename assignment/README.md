# Getting Started

This assignment use QIIME for some of the data preprocessing, which means you must have QIIME installed on your computer. If you have a Mac or Linux machine the read about the installation [here](https://github.com/biocore/qiime). THIS IS NOT THE RECOMMENDED OPTION. You should use your proteus account and load the required QIIME and Python modules.

The assignment requires that you are able to use tools in several different programming languages. While you may think it is inconvenient to program in different languages, it is quite common to do it for bioinformatics projects.  


# Part 1 - Installing QIIME and splitting up the data

## Setting up QIIME on proteus

There seems to be an issue installing and setting up QIIME on proteus. Following the instructions on the [proteus wiki](https://proteusmaster.urcf.drexel.edu/urcfwiki/index.php/QIIME) produces errors; however, there is a small workaround to getting QIIME set up. 

First, we need to make sure that we are working with Python 2.7. To do this we need to load the load. Then we can install QIIME. First, [PyCogent](http://pycogent.org/) must be installed, which should install with `pip` without any errors. You will get an error when you run `pip` with QIIME, but lets not worry about that.  
```bash 
  module load python/2.7.6
  pip install --install-option="--prefix=$HOME/.local/" cogent
  pip install --install-option="--prefix=$HOME/.local/" qiime 
```

Now that QIIME and PyCogent are install to you local directory, you need to tell Python where to find the programs. To do this you must set up the `$PATH` and `$PYTHONPATH` environmental variables in the shell. To make things easy, we are going to add them to our `.bashrc` file so that they are always set at login. 
```bash 
  echo "export PATH=$HOME/.local/bin/:$PATH" >> $HOME/.bashrc
  echo "export PYTHONPATH=$HOME/.local/lib/:$PYTHONPATH" >> $HOME/.bashrc
  source $HOME/.bashrc
```

If everything worked, this should print `1.8.1`
```bash 
  python -c "import qiime;print qiime.__version__"
```



## The assignment 

You should not run commands on any of the login nodes of proteus and you run the risk of having the admins cancel your programs if they see you doing this. Run all commands using the `qsub` command.

* Write a shell script to split the biom files (i.e., OTU table) grouped by `COMMON_SAMPLE_SITE`. There is a QIIME script to do this; however, you will need to read the documentation to find it. 
* Submit your job to proteus. You should have four map and biom files if your script worked correctly.
* Use `matlab/biom2matlab.py` to convert the four biom files to csv files. Let the `labels` be the gender of the individual.  

Hints: Make sure you add your group before submitting to `qsub`. Use `qstat` to check the status of your jobs.  

# Part 2 - Performing PCoA and plotting the results 

* Using the results from `Part 1`, perform PCoA using the [Hellinger](http://en.wikipedia.org/wiki/Hellinger_distance) and [Bray-Curtis](http://en.wikipedia.org/wiki/Bray%E2%80%93Curtis_dissimilarity) distances for each of the four csv files. 
* Plot your results in 2D. Label the samples by the gender of the individuals for each of the sample sites. 

