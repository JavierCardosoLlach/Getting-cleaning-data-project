## Getting and cleaning data: Project

The script to process the data follows the steps outlined in the project:
#####0. Downloaded and unzipped the files 

#####1. Merges the training and the test sets to create one data set:
The training and the test sites have the same configuration: 3 files, one file with the measurements (named "X"), one file with the subject ID (an integer from 1 to 30) and one file with the activity info (an integer from 1 to 6). 

Since both the training and test sites have the same variables, the script appends the "train" set to the "test" set to each one of the 3 datasets described above. After that, the 3 dataframes are combined by adding the subject and activity info as new columns to the measurement data.The resulting dataframe is named mergedData.

#####2. Extracts only the measurements on the mean and standard deviation for each measurement:
Using the features.txt file from the dataset, identified all the measurements that correspond to either mean or standard deviation from the data and subset the relevant columns into a new dataframe named mergedData2.

#####3. Uses descriptive activity names to name the activities in the data set
The MergedData2 dataframe identifies the activity with an integer from 1 to 6. The activity_labels.txt file contains descriptive activity names for them. The scripts merges the activity labels to MergedData2 based on the activity id (the integer from 1 to 6). The new dataframe is named mergedData3. 

#####4. Appropriately labels the data set with descriptive variable names.
To keep consistency with the main dataset all the variables keep the same name from the original dataset. The script uses the variable names from the features.txt file.  Those names describe each one of the variables. Additionaly, they are documentesd in the features_info.txt file provided in the dataset.

#####5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Using the dplyr package the scrips groups and summarizes the data into a final dataframe named "tidydataset". This file is than saved as a text file using the write.table function.


===================

##Acknowledgements:
###This project uses the following data source:
######Human Activity Recognition Using Smartphones Dataset
######Version 1.0

######Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
######Smartlab - Non Linear Complex Systems Laboratory
######DITEN - Universit‡ degli Studi di Genova.
######Via Opera Pia 11A, I-16145, Genoa, Italy.
######activityrecognition@smartlab.ws
######www.smartlab.ws

######Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
