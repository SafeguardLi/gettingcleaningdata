# Getting and Cleaning Data - Final Assignment
Repository for the final assignment of the *Getting and Cleaning Data* course on coursera.org


## What You Need to Know Before Running *run_analysis.R*:

The script for this assignment, *run_analysis.R* is included in this repository.
Ideally, you would download the script and run it from a folder that also includes the folder "UCI HAR dataset" from the project data.  
If you choose to run the script from a different location, please use as input to the script the path of the parent directory of the "UCI HAR dataset" folder.  
If you do not adhere to these instructions, *run_analysis.R* will return an error.

Here's an example of the ideal situation:
> list.files()  
[1] "run_analysis.R"       "UCI HAR Dataset"

**In this case**, you only need to run "run_analysis.R" like this:
> source("run_analysis.R")  
> run_analysis()

If you choose to run the script **from a different folder**, you should run it like this:
> source("run_analysis.R")  
> run_analysis("PATH TO PARENT DIRECTORY OF UCI HAR Dataset")


## What *run_analysis.R* Does:

*run_analysis.R* takes the test and train-data from the *UCI HAR dataset* and combines it into one big dataset.  
In doing so, it also assigns proper variable names to the dataset using the features of the study (see CodeBook.md for details) and adds the columns *subject* and *activity* that specify the observation of each measurement.  
Subsequently, only variables measuring a mean or standard deviation are extracted from the dataset as required by the assignment. Please refer to CodeBook.md for details on my choice of variables.  
Finally, as per the instructions of the assignment, a new dataset, *average_analysis* is created and written into a *.txt* file called "average_analysis.txt". The dataset is tidy as per the requirements of tidy data by Hadley Wickham (see CodeBook.md for details).  
*average_analysis.txt* includes the average value of each variable for each subject and each activity. Once more, please refer to CodeBook.md for details.  
The script takes quite a while to run, because the datasets are so big (and because it may not be coded in the most efficient way).  
For even more detailed information on what *run_analysis.R* does, please consult my comments in the script. 


## How to Read *average_analysis.txt* into R:

As recommended by David Hood in his [compendium of useful information](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/) about the course project, I now provide instructions for reading *average_analysis.txt* into R:

**Before** running the following code, please either download *average_analysis.txt* from my course project submission into your working directory, or (ideally) run *run_analysis.R*.

To read *average_analysis.txt* into R, please use the following code:

> if(file.exists("average_analysis.txt")) {  
     average_analysis <- read.table("./average_analysis.txt", header = TRUE,  
                                    stringsAsFactors = FALSE, check.names = FALSE)  
     View(average_analysis)  
 } else {stop("Please make sure that  
                'average_analysis.txt' exists in your working directory.")}

It is **absolutely crucial** that you use the **header = TRUE** and **check.names = FALSE** arguments.  
If you do not read *average_analysis.txt* into R as described above, you **will not** be able to view the dataset as intended. Therefore, if you are a peer reviewer for the *Getting and Cleaning Data* course,  I ask you to **follow these instructions** so that you can grade my assignment properly.

If you are a peer reviewer, I humbly **thank you** for grading my assignment. I hope it was satisfactory.
