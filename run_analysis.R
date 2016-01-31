# programing assignment for Getting and Cleaning the Data
#---------------------------------------------------------------------------------------------------
#  Clean up the workspace
rm(list=ls())

filename <- "UCI HAR Dataset"

## Download and unzip the dataset if it's not in local directory:
if (!file.exists(filename)){
  temp <- tempfile()
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, temp)
  unzip(temp)
  unlink(temp)
}
# change working directory
setwd(paste('./',filename,sep=''))
#----------------------------------------------------------------------------------------------------
# 1. Merges the training and the test sets to create one data set. 
# Read the data from: 
# training data set
features <- read.table('./features.txt',header=FALSE) 
activityLabels <- read.table('./activity_labels.txt',header=FALSE) 
trainSubject <- read.table('./train/subject_train.txt',header=FALSE) 
trainRawdata <- read.table('./train/x_train.txt',header=FALSE) 
trainType <- read.table('./train/y_train.txt',header=FALSE) 
# test data set 
testSubject <- read.table('./test/subject_test.txt',header=FALSE) 
testRawdata <- read.table('./test/x_test.txt',header=FALSE)
testType <- read.table('./test/y_test.txt',header=FALSE)
# Merge traning and test data set
train <- cbind(trainSubject, trainType, trainRawdata)
test  <- cbind(testSubject, testType, testRawdata)
allData <- rbind(train,test)
# Assign column names to the data frame     
colnames(activityLabels) <- c('activity ID','activityType')
colnames(allData) <- c("subject ID","activity ID",as.character(features[,2]))

#--------------------------------------------------------------------------------------------------

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# Subset the column data containing either "mean" or "standard deviation".
subsetIDX <- grep("mean|std", features[,2])
extData <- allData[,subsetIDX]
extcolnames <-colnames(extData)
#--------------------------------------------------------------------------------------------------

# 3. Uses descriptive activity names to name the activities in the data set
extData = merge(extData, activityLabels, by='activity ID', all.x=TRUE)

#--------------------------------------------------------------------------------------------------
# 4. Appropriately labels the data set with descriptive variable names.

# the strpool contains string features to be removed.
strpool <- c("\\()","-std$","-mean","^(t)","^(f)","([Gg]ravity)","([Bb]ody[Bb]ody|[Bb]ody)",
             "[Gg]yro","AccMag","([Bb]odyaccjerkmag)","JerkMag","GyroMag")
# the subpool contains new strings to substitute for specific strings in the strpool.
subpool  <- c("","StdDev","Mean","time","freq","Gravity","Body",
              "Gyro","AccMagnitude","BodyAccJerkMagnitude","JerkMagnitude","GyroMagnitude")

# check if numbers of strings in strpool and subpool are the same
if(length(strpool) == length(subpool)){
  for(i in 1:length(strpool)){
    colnames(extData) = gsub(strpool[i],subpool[i],colnames(extData))
    }
}else message("Mismached number of descriptive variable names. Skipping Step 4.")

#-------------------------------------------------------------------------------------------------- 
# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.

splitSet <- extData[,names(extData) != 'activityType']
tidyData <- aggregate(splitSet[,!(colnames(splitSet) %in% c('activity ID','subject ID','activityType'))],
    by=list('activity ID'=splitSet$'activity ID','subject Id'=splitSet$'subject ID'), mean)
tidyData <- merge(tidyData, activityLabels, by='activity ID', all.x=TRUE)
# Export the tidyData set 
write.table(tidyData, './tidyData.txt',row.names=FALSE,sep='\t')

