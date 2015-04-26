The features selected for this data set presented in this project is the average of a subset of variables from the Galaxy Smartphone measurements referenced in the README.md file in this repository. 

This is the approach followed for the naming convention for the measurements:

There are 2 types of time domain measurements (indicated by the letter t at the beginning of the variable name).

1. Accelerometer (Acc), there are two types:
  - Body (Body)
  - Gravity (Gravity)

2. Gyroscope (Gyro)

For both Accelerometer and Gyroscope measurements, Jerk (Jerk) signals are derived.
All the measurements above are in 3 axis: X, Y or Z as indicated by the last letter in the variable.
For each one of the variables above, the magnitude (Mag) was calculated

In addition, there are measurements in the frequency domain for 7 of the measurements above. (indicated by the letter f at the beginning of the variable name).

All these variables have both mean and standard deviation form the original dataset. Finally, there are additional vectors that are average signals in a window sample. They were included in this project. 
 All of them were selected for this project.
 
 This is the list:

-subject: an integrer from 1 to 30. Correspoding to the 30 subject tests in  the dataset.

-activityid: an integer from 1 to 6: Corresponding to each one of the activities described in "activity"

-activity: 6 types of ctivities used for the measurements: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

-tBodyAcc-mean()-XYZ

tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyAccMag-mean()
tGravityAccMag-mean()
tBodyAccJerkMag-mean()
tBodyGyroMag-mean()
tBodyGyroJerkMag-mean()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyAccMag-mean()
fBodyBodyAccJerkMag-mean()
fBodyBodyGyroMag-mean()
fBodyBodyGyroJerkMag-mean()
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-std()
tGravityAccMag-std()
tBodyAccJerkMag-std()
tBodyGyroMag-std()
tBodyGyroJerkMag-std()
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-std()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-std()
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z
fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z
fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z
fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-meanFreq()
angle(tBodyAccMean,gravity)
angle(tBodyAccJerkMean),gravityMean)
angle(tBodyGyroMean,gravityMean)
angle(tBodyGyroJerkMean,gravityMean)
angle(X,gravityMean)
angle(Y,gravityMean)
angle(Z,gravityMean)
