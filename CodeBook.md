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
 
 #####This is the list:

- subject: an integrer from 1 to 30. Correspoding to the 30 subject tests in  the dataset.

- activityid: an integer from 1 to 6: Corresponding to each one of the activities described in "activity"

- activity: 6 types of ctivities used for the measurements: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

#####All the variables below follow the convention described above:

- tBodyAcc-mean()-XYZ

- tGravityAcc-mean()-XYZ

- tBodyAccJerk-mean()-XYZ

- tBodyGyro-mean()-XYZ

- tBodyGyroJerk-mean()-XYZ

- tBodyAccMag-mean()

- tGravityAccMag-mean()

- tBodyAccJerkMag-mean()

- tBodyGyroMag-mean()
 
- tBodyGyroJerkMag-mean()

- fBodyAcc-mean()-XYZ

- fBodyAccJerk-mean()-XYZ

- fBodyGyro-mean()-XYZ

- fBodyAccMag-mean()

- fBodyBodyAccJerkMag-mean()

- fBodyBodyGyroMag-mean()

- fBodyBodyGyroJerkMag-mean()

- tBodyAcc-std()-XYZ

- tGravityAcc-std()-XYZ

- tBodyAccJerk-std()-XYZ

- tBodyGyro-std()-XYZ

- tBodyGyroJerk-std()-XYZ

- tBodyAccMag-std()

- tGravityAccMag-std()

- tBodyAccJerkMag-std()

- tBodyGyroMag-std()

- tBodyGyroJerkMag-std()

- fBodyAcc-std()-XYZ

- fBodyAccJerk-std()-XYZ

- fBodyGyro-std()-XYZ

- fBodyAccMag-std()

- fBodyBodyAccJerkMag-std()

- fBodyBodyGyroMag-std()

- fBodyBodyGyroJerkMag-std()

- fBodyAcc-meanFreq()-XYZ

- fBodyAccJerk-meanFreq()-XYZ

- fBodyGyro-meanFreq()-XYZ

- fBodyAccMag-meanFreq()

- fBodyBodyAccJerkMag-meanFreq()

- fBodyBodyGyroMag-meanFreq()

- fBodyBodyGyroJerkMag-meanFreq()

- angle(tBodyAccMean,gravity)

- angle(tBodyAccJerkMean),gravityMean)

- angle(tBodyGyroMean,gravityMean)

- angle(tBodyGyroJerkMean,gravityMean)

- angle(X,gravityMean)

- angle(Y,gravityMean)

- angle(Z,gravityMean)
