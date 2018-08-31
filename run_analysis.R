#This is an analysis-script that is required to run in a directory that
#is the parent directory to the UCI HAR dataset. It takes the data, turns it
#into a tidy format and finally creates a *.txt file containing the averages
#for all variables/features of the study for each subject and each activity.


run_analysis <- function(directory = getwd()) {
  
  setwd(directory) #Workig directory is set to the specified directory to make
                   #the following steps easier.
  
  errormessage <- "Please make sure that the directory 'UCI HAR Dataset' exists
  in your working directory or use the parent directory of the
  'UCI HAR Dataset'-directory as input to run_analysis()!
  Example: run_analysis('C:/Users/MyUser/Courseradata/workdir')
  For further questions please consult the README!"
  if(!dir.exists("UCI HAR Dataset")) stop(errormessage)
  
  features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE,
                         stringsAsFactors = FALSE)
  activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt",
                               header = FALSE, stringsAsFactors = FALSE)
  testdata <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE,
                         stringsAsFactors = FALSE)
  testlabels <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE,
                           stringsAsFactors = FALSE)
  testsubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt",
                             header = FALSE, stringsAsFactors = FALSE)
  traindata <- read.table("./UCI HAR Dataset/train/X_train.txt",
                          header = FALSE, stringsAsFactors = FALSE)
  trainlabels <- read.table("./UCI HAR Dataset/train/y_train.txt",
                            header = FALSE, stringsAsFactors = FALSE)
  trainsubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt",
                              header = FALSE, stringsAsFactors = FALSE)

  #Both the test and the train-data are assigned their respective variables:
  names(testdata) <- features[,2]
  names(traindata) <- features[,2]
  
  #An activity column is added to each dataset to specify each observation:
  names(testlabels) <- "activity"
  testdata_labelled <- cbind(testlabels, testdata)
  names(trainlabels) <- "activity"
  traindata_labelled <- cbind(trainlabels, traindata)
  
  #A subject column is added to each dataset to specify each observation:
  names(testsubjects) <- "subject"
  names(trainsubjects) <- "subject"
  testdata_labelled <- cbind(testsubjects, testdata_labelled)
  traindata_labelled <- cbind(trainsubjects, traindata_labelled)
  
  #Test and train-data are combined into one long dataset:
  combineddata <- rbind(testdata_labelled, traindata_labelled)
  
  #This loop appropriately labels each observation according to its activity:
  for(i in 1:nrow(activitylabels)) {
    combineddata$activity[which(
      combineddata$activity == i)] <- activitylabels$V2[i]
  }
  
  #Only the mean and standard deviation values of each measurement are
  #extracted, as required in the assignment:
  meanstdvars <- sort(c(grep("[Mm]ean", names(combineddata)),
                        grep("std", names(combineddata))))
  meanstddata <- cbind(combineddata[,1:2], combineddata[,meanstdvars])
  #Data is sorted by subject:
  meanstddata_sorted <- dplyr::arrange(meanstddata, subject)
  
  #The following loop takes the mean of each variable for each activity
  #performed by each subject (as required in the assignment):
  subjects <- unique(meanstddata_sorted$subject)
  result <- data.frame()
  for(i in subjects) {
    for(j in 1:6){
      tempdat <- dplyr::filter(meanstddata_sorted, subject == i,
                               activity == activitylabels[j,2])
      varmeans <- sapply(dplyr::select(tempdat, -(subject:activity)), mean)
      result <- rbind(result, c(i, activitylabels[j,2], varmeans),
                      stringsAsFactors = FALSE)
    }
  }
  names(result) <- names(meanstddata_sorted)
  
  write.table(result, "./average_analysis.txt",
              row.name = FALSE) #Stores the resulting dataset
  
}
