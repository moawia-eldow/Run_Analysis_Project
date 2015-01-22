## run_analysis.R

library(dplyr)
library(shape2)

## Step1 - To merge the training and the test sets to create one data set.
tr_subject <- read.table ("UCI-HAR-Dataset/train/subject_train.txt")
tr_activity <- read.table ("UCI-HAR-Dataset/train/y_train.txt")
tr_dataset <- read.table ("UCI-HAR-Dataset/train/x_train.txt")

ts_subject <- read.table ("UCI-HAR-Dataset/test/subject_test.txt")
ts_activity <- read.table ("UCI-HAR-Dataset/test/y_test.txt")
ts_dataset <- read.table ("UCI-HAR-Dataset/test/x_test.txt")

tr_data <- cbind(tr_subject, tr_activity, tr_dataset)
ts_data <- cbind(ts_subject, ts_activity, ts_dataset)

uci_har_data <- rbind (tr_data, ts_data)

## Step2 - To extract only the measurements on the mean and standard deviation 
##         for each measurement.
features_table <- read.table ("UCI-HAR-Dataset/features.txt")
features_vec <- as.vector(feature_table$V2)

variables_vec <- make.unique(c("Subject", "Activity", feature_vec))

names(uci_har_data) <- variables_vec

measures_mean_std <- select_vars(names(uci_har_data), contains("mean()"), contains("std()"))

selected_variables <- unique(c("Subject", "Activity", measures_mean_std))

selected_dataset <- select(uci_har_data, one_of(selected_variables))

## Step3 - To use descriptive activity names to name the activities in the data set.
activity_table <- read.table ("UCI-HAR-Dataset/activity_labels.txt")
activity_names <- as.vector(activity_table$V2)

selected_dataset$Activity <- factor (selected_dataset$Activity, labels = activity_names)

## Step4 - To label the data set with descriptive variable names.
modified_variables <- gsub("-","_",names(selected_dataset))
modified_variables <- gsub("[(][)]","",modified_vectors)

names(selected_dataset) <- modified_variables

## step5 - To create a second, independent tidy data set with the average of each variable 
##         for each activity and each subject.
measure_vars <- names(selected_dataset[3:ncol(selected_dataset)])
 
dataset_Melt <- melt(selected_dataset,id=c("Subject","Activity"),measure.vars=measure_vars)

Tidy_Data_Avg <- dcast(dataset_Melt, Subject + Activity ~ variable, mean)

## To write the tidy dataset to file.
## To write the varible names of the tidy dataset to file for code book.
write.table  (Tidy_Data_Avg, file = "UCI-HAR-Dataset/tidy_dataset.txt")
write.table  (names(Tidy_data_Avg), file = "UCI-HAR-Dataset/tidy_var_names.txt")

