# Code Book

## Description
This code book describes the variables, the data, and transformations that were performed to clean up the original data. Descriptions of the orginal data set in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Overview
The tidy data set is prepared by the script `run_analysis.R`, which does the following clean-up:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Identifiers
The following identifiers have been changed or added:

* `subject ID` - The ID represents the train and test subjects in `subject_train.txt` and `subject_test.txt`.
* `activity ID` - The ID corresponds to the activitiy types in `activity_labels.txt`
* `activityType` - Descriptive activity names corresponding to `activity ID`
## Measurements
The following measurement variables from `features.txt` have been reformated:
The columns on the left and right represent the original and clean-up variable names, respectively.
* `tBodyAcc-mean()-X` `timeBodyAccMean-X`
* `tBodyAcc-mean()-Y` `timeBodyAccMean-Y`
* `tBodyAcc-mean()-Z` `timeBodyAccMean-Z`
* `tBodyAcc-std()-X`  `timeBodyAcc-std-X`
* `tBodyAcc-correlation()-X,Z`  `timeBodyAcc-correlation-X,Z`
* `tBodyAcc-correlation()-Y,Z`  `timeBodyAcc-correlation-Y,Z`
* `tGravityAcc-mean()-X` `timeGravityAccMean-X`
* `tGravityAcc-mean()-Y` `timeGravityAccMean-Y`
* `tGravityAcc-mean()-Z` `timeGravityAccMean-Z`
* `tGravityAcc-std()-X`  `timeGravityAcc-std-X`
* `tGravityAcc-correlation()-X,Z`  `timeGravityAcc-correlation-X,Z`
* `tGravityAcc-correlation()-Y,Z`  `timeGravityAcc-correlation-Y,Z`
* `tBodyAccJerk-mean()-X` `timeBodyAccJerkMean-X`
* `tBodyAccJerk-mean()-Y` `timeBodyAccJerkMean-Y`
* `tBodyAccJerk-mean()-Z` `timeBodyAccJerkMean-Z`
* `tBodyAccJerk-std()-X`  `timeBodyAccJerk-std-X`
* `tBodyAccJerk-correlation()-X,Z`  `timeBodyAccJerk-correlation-X,Z`
* `tBodyAccJerk-correlation()-Y,Z`  `timeBodyAccJerk-correlation-Y,Z`
* `tBodyGyro-mean()-X` `timeBodyGyroMean-X`
* `tBodyGyro-mean()-Y` `timeBodyGyroMean-Y`
* `tBodyGyro-mean()-Z` `timeBodyGyroMean-Z`
* `tBodyGyro-std()-X`  `timeBodyGyro-std-X`
* `tBodyGyro-correlation()-X,Z`  `timeBodyGyro-correlation-X,Z`
* `tBodyGyro-correlation()-Y,Z`  `timeBodyGyro-correlation-Y,Z`
* `tBodyGyroJerk-mean()-X` `timeBodyGyroJerkMean-X`
* `tBodyGyroJerk-mean()-Y` `timeBodyGyroJerkMean-Y`
* `tBodyGyroJerk-mean()-Z` `timeBodyGyroJerkMean-Z`
* `tBodyGyroJerk-std()-X`  `timeBodyGyroJerk-std-X`
* `tBodyGyroJerk-correlation()-X,Z`  `timeBodyGyroJerk-correlation-X,Z`
* `tBodyGyroJerk-correlation()-Y,Z`  `timeBodyGyroJerk-correlation-Y,Z`
* `tBodyAccMag-arCoeff()3`        `timeBodyAccMagnitude-arCoeff3`
* `tBodyAccMag-arCoeff()4`        `timeBodyAccMagnitude-arCoeff4`
* `tGravityAccMag-arCoeff()3`        `timeGravityAccMagnitude-arCoeff3`
* `tGravityAccMag-arCoeff()4`        `timeGravityAccMagnitude-arCoeff4`
* `tBodyAccJerkMag-arCoeff()3`        `timeBodyAccJerkMagnitude-arCoeff3`
* `tBodyAccJerkMag-arCoeff()4`        `timeBodyAccJerkMagnitude-arCoeff4`
* `tBodyGyroMag-arCoeff()3`        `timeBodyGyroMagnitude-arCoeff3`
* `tBodyGyroMag-arCoeff()4`        `timeBodyGyroMagnitude-arCoeff4`
* `tBodyGyroJerkMag-arCoeff()3`        `timeBodyGyroJerkMagnitude-arCoeff3`
* `tBodyGyroJerkMag-arCoeff()4`        `timeBodyGyroJerkMagnitude-arCoeff4`
* `fBodyAcc-mean()-X` `freqBodyAccMean-X`
* `fBodyAcc-mean()-Y` `freqBodyAccMean-Y`
* `fBodyAcc-mean()-Z` `freqBodyAccMean-Z`
* `fBodyAcc-std()-X`  `freqBodyAcc-std-X`
* `fBodyAcc-maxInds-Y`    `freqBodyAcc-maxInds-Y`
* `fBodyAcc-maxInds-Z`    `freqBodyAcc-maxInds-Z`
* `fBodyAcc-meanFreq()-X` `freqBodyAccMeanFreq-X`
* `fBodyAcc-bandsEnergy()-1,24`  `freqBodyAcc-bandsEnergy-1,24`
* `fBodyAcc-bandsEnergy()-25,48`  `freqBodyAcc-bandsEnergy-25,48`
* `fBodyAccJerk-mean()-X` `freqBodyAccJerkMean-X`
* `fBodyAccJerk-mean()-Y` `freqBodyAccJerkMean-Y`
* `fBodyAccJerk-mean()-Z` `freqBodyAccJerkMean-Z`
* `fBodyAccJerk-std()-X`  `freqBodyAccJerk-std-X`
* `fBodyAccJerk-maxInds-Y`    `freqBodyAccJerk-maxInds-Y`
* `fBodyAccJerk-maxInds-Z`    `freqBodyAccJerk-maxInds-Z`
* `fBodyAccJerk-meanFreq()-X` `freqBodyAccJerkMeanFreq-X`
* `fBodyAccJerk-bandsEnergy()-1,24`  `freqBodyAccJerk-bandsEnergy-1,24`
* `fBodyAccJerk-bandsEnergy()-25,48`  `freqBodyAccJerk-bandsEnergy-25,48`
* `fBodyGyro-mean()-X` `freqBodyGyroMean-X`
* `fBodyGyro-mean()-Y` `freqBodyGyroMean-Y`
* `fBodyGyro-mean()-Z` `freqBodyGyroMean-Z`
* `fBodyGyro-std()-X`  `freqBodyGyro-std-X`
* `fBodyGyro-maxInds-Y`    `freqBodyGyro-maxInds-Y`
* `fBodyGyro-maxInds-Z`    `freqBodyGyro-maxInds-Z`
* `fBodyGyro-meanFreq()-X` `freqBodyGyroMeanFreq-X`
* `fBodyGyro-bandsEnergy()-1,24`  `freqBodyGyro-bandsEnergy-1,24`
* `fBodyGyro-bandsEnergy()-25,48`  `freqBodyGyro-bandsEnergy-25,48`
* `fBodyAccMag-entropy()`        `freqBodyAccMagnitude-entropy`
* `fBodyAccMag-skewness()`        `freqBodyAccMagnitude-skewness`
* `fBodyAccMag-kurtosis()`        `freqBodyAccMagnitude-kurtosis`
* `fBodyBodyAccJerkMag-entropy()`    `freqBodyAccJerkMagnitude-entropy`
* `fBodyBodyAccJerkMag-skewness()`    `freqBodyAccJerkMagnitude-skewness`
* `fBodyBodyAccJerkMag-kurtosis()`    `freqBodyAccJerkMagnitude-kurtosis`
* `fBodyBodyGyroMag-entropy()`    `freqBodyGyroMagnitude-entropy`
* `fBodyBodyGyroMag-skewness()`    `freqBodyGyroMagnitude-skewness`
* `fBodyBodyGyroMag-kurtosis()`    `freqBodyGyroMagnitude-kurtosis`
* `fBodyBodyGyroJerkMag-entropy()`    `freqBodyGyroJerkMagnitude-entropy`

## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test
