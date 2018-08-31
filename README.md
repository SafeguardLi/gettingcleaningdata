# Getting and Cleaning Data - Final Assignment
Repository for the final assignment of the Getting and Cleaning Data course on coursera.org


## What You Need to Know Before Running *run_analysis.R*:

The script for this assignment, *run_analysis.R* is included in this repository.
Ideally, you would download the script and run it from a folder that also includes the folder "UCI HAR dataset" from the project data.  
If you choose to run the script from a different location, please use as input to the script the path of the parent directory of the "UCI HAR dataset" folder.  
If you do not adhere to these instructions, *run_analysis.R* will return an error.

Here's an example of the ideal situation:
> list.files()  
[1] "run_analysis.R"       "UCI HAR Dataset"

In this case, you only need to run "run_analysis.R" like this:
> run_analysis()

If you choose to run the script from a different folder, you should run it like this:
> run_analysis("PATH TO PARENT DIRECTORY OF UCI HAR Dataset")


## What *run_analysis.R* Does:

*run_analysis.R* takes the test and train-data from the *UCI HAR dataset* and combines it into one big dataset.  
In doing so, it also assigns proper variable names to the dataset using the features of the study (see CodeBook.md for details) and adds the columns *subject* and *activity* that specify the observation of each measurement.  
Subsequently, only variables measuring a mean or standard deviation are extracted from the dataset as required by the assignment. Please refer to CodeBook.md for details on my choice of variables.  
Finally, as per the instructions of the assignment, a new dataset, *average_analysis* is created and written into a *.txt* file called "average_analysis.txt". The dataset is tidy as per the requirements of tidy data by Hadley Wickham.  
*average_analysis.txt* includes the average value of each variable for each subject and each activity. Once more, please refere to CodeBook.md for details.  


## How to Read *average_analysis.txt* into R:

As recommended by David Hood in his compendium of useful information about the course project, I now provide instructions for reading *average_analysis.txt* into R:

Before running the following code, please either download *average_analysis.txt* from my course project submission into your working directory, or (ideally) run *run_analysis.R*.

To read *average_analysis.txt* into R, please use the following code:

> if(file.exists("average_analysis.txt")) {  
     average_analysis <- read.table("./average_analysis.txt", header=TRUE,  
                                    stringsAsFactors = FALSE, check.names=FALSE)  
 } else {stop("Please make sure that  
                'average_analysis.txt' exists in your working directory.")}
