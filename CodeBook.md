# Codebook for the Tidy Dataset Resulting from *run_analysis.R* (*average_analysis.txt*)



## General Information

The script *run_analysis.R* creates a tidy dataset called *average_analysis.txt* from the *UCI HAR Dataset*.  Detailed information on how to run *run_analysis.R* and how to read *average_analysis.txt* into R can be found in README.md.

I consider *average_analysis.txt* to be a tidy dataset, because it fulfills the three basic requirements of tidy data as described by Hadley Wickham (2014):

**1. Each variable forms a column**  
The variables denote the subject, activity, and the different measurements taken ("features") in the study (see below for my choice of features). The resulting dataset *average_analysis.txt* consists of **88 variables**.

**2. Each observation forms a row**  
A row consists of the observations for each variable of a specific activity performed by a specific subject. Therefore, the resulting dataset *average_analysis.txt* consists of **180 observations**.

**3. Each type of observational unit forms a table.**  
As required by the assignment, the test and train-data were combined into one dataset that satisfies this condition.

Evidently, I have chosen the wide data format to represent the dataset. Although one could alternatively choose a narrow data format, I believe that the wide format more accurately represents the observations of the data in a scientific context. For further information on data formats see Wickham (2014) and Hood (2015).



## Variables

As required by the assignment (step 2), from the original set of 563 variables/features I selected all those variables that measure a mean or standard deviation of a feature vector. Specifically, I included all variables that include "mean" or "std" in their name. This includes weighted averages of frequency components (*meanFreq()*) and the additional vectors obtained by averaging the signals in a signal window sample (the 7 *angle()* variables).  
In addition, I added a variable *subject* denoting the subject of each observation (one out of thirty) and an *acitivity* variable denoting the activity of each observation (one out of six).  
Therefore, there are 88 variables in total in the dataset *average_analysis.txt*. A complete list of these variables can be found at the bottom of this document.  
The variables received proper names as found in the features-list of the original dataset, denoting exactly what was measured (adhering to the first of the three principles of tidy data).



## Observations

Each observation in *average_analysis.txt* represents the average value of each variable for each activity performed by a subject as required by the assignment (step 5). For example, the first row represents the average value of each variable over all measurements of the activity "WALKING" performed by subject no. 1.  
Therefore, there are 180 observations in total in the dataset *average_analysis.txt* (six activities performed by each of thirty subjects).  
Activities were properly identified as *WALKING*, *WALKING_UPSTAIRS*, *WALKING_DOWNSTAIRS*, *SITTING*, *STANDING*, and *LAYING*.



## References

Hood, D. (2015). Getting and Cleaning the Assignment. Retrieved from https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/.

Wickham, H. (2014). Tidy data. Journal of Statistical Software, 59(10), 1-23.



## Complete List of Variables


