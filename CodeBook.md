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

**As per the original information provided by the authors of the study:**  
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

**As required by the assignment (step 2):**  
From the original set of 561 variables/features I selected all those variables that measure a mean or standard deviation of a feature vector. Specifically, I included all variables that include "mean" or "std" in their name. This includes weighted averages of frequency components (*meanFreq()*) and the additional vectors obtained by averaging the signals in a signal window sample (the 7 *angle()* variables).  
In addition, I added a variable *subject* denoting the subject of each observation (one out of thirty) and an *acitivity* variable denoting the activity of each observation (one out of six).  
Therefore, there are 88 variables in total in the dataset *average_analysis.txt*. A complete list of these variables can be found at the bottom of this document.  
The variables received proper names as found in the features-list of the original dataset, denoting exactly what was measured (adhering to the first of the three principles of tidy data).



## Observations

Each observation in *average_analysis.txt* represents the average value of each variable for each activity performed by a subject as required by the assignment (step 5). For example, the first row represents the average value of each variable over all measurements of the activity "WALKING" performed by subject no. 1. This adheres to the second of the three principles of tidy data.  
Therefore, there are 180 observations in total in the dataset *average_analysis.txt* (six activities performed by each of thirty subjects).  
Activities were properly identified as *WALKING*, *WALKING_UPSTAIRS*, *WALKING_DOWNSTAIRS*, *SITTING*, *STANDING*, and *LAYING*.



## References

Hood, D. (2015). Getting and Cleaning the Assignment. Retrieved from https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/.

Wickham, H. (2014). Tidy data. Journal of Statistical Software, 59(10), 1-23.



## Complete List of Variables

subject  
activity  
tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyAccMag-mean()  
tBodyAccMag-std()  
tGravityAccMag-mean()  
tGravityAccMag-std()  
tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()  
tBodyGyroMag-mean()  
tBodyGyroMag-std()  
tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAcc-meanFreq()-X  
fBodyAcc-meanFreq()-Y  
fBodyAcc-meanFreq()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyAccJerk-meanFreq()-X  
fBodyAccJerk-meanFreq()-Y  
fBodyAccJerk-meanFreq()-Z  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  
fBodyGyro-meanFreq()-X  
fBodyGyro-meanFreq()-Y  
fBodyGyro-meanFreq()-Z  
fBodyAccMag-mean()  
fBodyAccMag-std()  
fBodyAccMag-meanFreq()  
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()  
fBodyBodyAccJerkMag-meanFreq()  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std()  
fBodyBodyGyroMag-meanFreq()  
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std()  
fBodyBodyGyroJerkMag-meanFreq()  
angle(tBodyAccMean,gravity)  
angle(tBodyAccJerkMean),gravityMean)  
angle(tBodyGyroMean,gravityMean)  
angle(tBodyGyroJerkMean,gravityMean)  
angle(X,gravityMean)  
angle(Y,gravityMean)  
angle(Z,gravityMean)
