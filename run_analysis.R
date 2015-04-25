## Download & unzip the files
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./SamsungGSData.zip",method="curl")
filelist <- unzip("SamsungGSData.zip",list=TRUE)
unzip("SamsungGSData.zip")

## 1. Merges the training and the test sets to create one data set

## Combine the "X" files 
test_set<-read.table("UCI HAR Dataset/test/X_test.txt")
train_set<-read.table("UCI HAR Dataset/train/X_train.txt")
mergedData = rbind(test_set,train_set)

## Combine the "Subject" files
test_subject<- read.table("UCI HAR Dataset/test/subject_test.txt")
train_subject<- read.table("UCI HAR Dataset/train/subject_train.txt")
mergedSubject= rbind(test_subject,train_subject)

## Combine the "activity" files
test_activity<-read.table("UCI HAR Dataset/test/y_test.txt")
train_activity<-read.table("UCI HAR Dataset/train/y_train.txt")
mergedActivity=rbind(test_activity,train_activity)

#Add the "Subject" and "activity" columns to the mergedData dataframe
mergedData= cbind(mergedData,as.vector(mergedActivity))
mergedData= cbind(mergedData,as.vector(mergedSubject))

# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# Read the features file to get the variable list 
features<-read.table("UCI HAR Dataset/features.txt")


## Identify the features that are either mean and standard deviation of each measurement
mean_measurements<- grep("mean()",features$V2,value=FALSE,fixed=TRUE)
std_measurements<- grep("std()",features$V2,value=FALSE,fixed=TRUE)
meanFreq_measurements<-grep("meanFreq",features$V2,value=FALSE,fixed=TRUE)
Mean_measurements<- grep("Mean",features$V2,value=FALSE,fixed=TRUE)

## create a second dataframe with only the mean and std features
mergedData2 <- mergedData[,c(562:563,mean_measurements,std_measurements,meanFreq_measurements,Mean_measurements)]

# 3.Uses descriptive activity names to name the activities in the data set
# Read the activity labels file
activitylabels<-read.table("UCI HAR Dataset/activity_labels.txt")
# create a third dataframe merging the activity labels to the data
mergedData3<-merge(activitylabels,mergedData2,by.x ="V1",by.y="V1")

#4. Appropriately labels the data set with descriptive variable names.
## Name each variable with the same names from the features.txt file
names(mergedData3)<- c("activityid","activity","subject",as.vector(features$V2[mean_measurements]),as.vector(features$V2[std_measurements]),as.vector(features$V2[meanFreq_measurements]),as.vector(features$V2[Mean_measurements]))

 #5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
groupedData=group_by(mergedData3,subject,activity,activityid)
tidydataset<-summarise_each(tidydataset,funs(mean))
tidydataset<-arrange(tidydataset,subject,activityid)

# Please upload the tidy data set created in step 5 of the instructions. Please upload your data set as a txt file created with write.table() using row.name=FALSE (do not cut and paste a dataset directly into the text box, as this may cause errors saving your submission).
write.table(tidydataset,"tidydataset.txt",row.names=FALSE)
      
