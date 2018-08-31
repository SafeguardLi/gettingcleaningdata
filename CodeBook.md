# Codebook for the Tidy Dataset Resulting from *run_analysis.R* (*average_analysis.txt*)

## General Information

The script *run_analysis.R* creates a tidy dataset called *average_analysis.txt* from the *UCI HAR Dataset*.  Detailed information on how to run *run_analysis.R* and how to read *average_analysis.txt* into R can be found in README.md.

I consider *average_analysis.txt* to be a tidy dataset, because it fulfills the three basic requirements of tidy data as described by Hadley Wickham (2014):

**1. Each variable forms a column**  
The variables denote the subject, activity, and the different measurements taken ("features") in the study (see below for my choice of features).

**2. Each observation forms a row**  
A row consists of the observations for each variable of a specific activity performed by a specific subject.

**3. Each type of observational unit forms a table.**  
As required by the assignment, the test and train-data were combined into one dataset.

Evidently, I have chosen the wide data format to represent the dataset. Although one could alternatively choose a narrow data format, I believe that the wide format more accurately represents the observations of the data. For further information on data formats see Wickham (2014) and Hood (2015).


## Variables


## References

Hood, D. (2015). Getting and Cleaning the Assignment. Retrieved from https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/.

Wickham, H. (2014). Tidy data. Journal of Statistical Software, 59(10), 1-23.
