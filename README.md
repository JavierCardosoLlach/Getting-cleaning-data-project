## Getting-cleaning-data-project
Project submission for the Getting and cleaning Data project
You should include a README.md in the repo describing how the script works and the code book describing the variables.

The script to process the data follows the steps outlined in the project:
#####0. Downloaded and unzipped the files 

#####1. Merges the training and the test sets to create one data set:
The training and the test sites have the same configuration: 3 files, one file with the measurements named "X", one file with the subject ID (an integer from 1 to 30) and one file with the activity info (an integer from 1 to 6). Since both the training and test sites have the same variables, I appended the "train" set to the "test" set to each one of the files and then combined the files by adding the subject and activity info as new columns to the measurement data.The resulting dataframe is named MergedData.

#####2. Extracts only the measurements on the mean and standard deviation for each measurement:
Using the features.txt file from the dataset, identified all the measurements that correspond to either mean or standard deviation from the data and subset the relevant columns into a new dataframe named MergedData2.

3. 

