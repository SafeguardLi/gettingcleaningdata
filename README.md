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


