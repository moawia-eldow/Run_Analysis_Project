# run_analysis.R
This is a repo for the project of Getting and Cleaning Data course

The purpose of these scripts is to collect, work with, and clean a data set from the data collected  
from the accelerometers from the Samsung Galaxy S smart phone.

The goal is to prepare a tidy dataset that can be used for later analysis. 

The scripts are divided into 5 steps:

(1) Merging the training and the test sets to create one data set.

(2)Extracting only the measurements on the mean and standard deviation for each measurement. 

(3) Using descriptive activity names to name the activities in the data set

(4) Labelling the data set with descriptive variable names. 

(5) Creating a second, independent tidy data set with the average of each variable for each activity and each subject. 

The following is the description of all scripts within each step: 

  <start of scripts>

Loading two packages - dplyr and shape2 by two scripts: 

  > library(dplyr) 
  
  > library(shape2)

(1) Step1 starts by reading the data of training set, that includes three files of subject (subject_train.txt), activity (y_train.txt) and dataset (x_train.txt) by read.table() from "UCI-HAR-Dataset/train", and send results to three data frames -  tr_subject, tr_activity and tr_dataset by three scripts:

  > tr_subject <- read.table ("UCI-HAR-Dataset/train/subject_train.txt")
  
  > tr_activity <- read.table ("UCI-HAR-Dataset/train/y_train.txt")
  
  > tr_dataset <- read.table ("UCI-HAR-Dataset/train/x_train.txt")

- Step1 continues reading the data of test set, that includes three files of subject (subject_test.txt), activity (y_test.txt) and dataset (x_test.txt) by read.table() from "UCI-HAR-Dataset/test", and send them to three data frames -  ts_subject, ts_activity and ts_dataset by three scripts:

  > ts_subject <- read.table ("UCI-HAR-Dataset/test/subject_test.txt")
  
  > ts_activity <- read.table ("UCI-HAR-Dataset/test/y_test.txt")
  
  > ts_dataset <- read.table ("UCI-HAR-Dataset/test/x_test.txt")

- Then the three frames of each set are merged by cbind(), and send the results to other two data frames - tr_data and ts_data using two scripts:
  
  > tr_data <- cbind(tr_subject, tr_activity, tr_dataset)
  
  > ts_data <- cbind(ts_subject, ts_activity, ts_dataset)

- The two data sets are merged using rbind(), and send the result to new data frame - uci_har_data using the script: 

  > uci_har_data <- rbind (tr_data, ts_data)

(2) Step2 starts by reading the feature tables of the file of features from "UCI-HAR-Dataset" by read.table() 
and send it to data frame - features_table, and then prepare a vector of features from second column(V2), 
and send the result to - features_vec by two scripts:

  > features_table <- read.table ("UCI-HAR-Dataset/features.txt")
  
  > features_vec <- as.vector(feature_table$V2)

-generate a vector of variables of distinct values by adding "Subject" and "Activity" to feature_vec using function make.unique(), and send the result to variables_vec by scripts:

   > variables_vec <- make.unique(c("Subject", "Activity", feature_vec))

-label the names of data frame - uci_har_data with this vector of variables - varibles_vec using function names() by the script:

  > names(uci_har_data) <- variables_vec
  
-extract the measures which contains "main()" and "std()" from the names of hci_har_data using the function select_vars() and send the result to vector - measures_mean_std - by the script: 

 > measures_mean_std <- select_vars(names(uci_har_data), contains("mean()"), contains("std()"))

- add two names "Subject" and "Activity" to the vector - measures_mean_std, and then remove the duplicated names using the function unique(), and send the result to new vector - selected_varibles by the script:

  > selected_variables <- unique(c(Subject", "Activity", measures_mean_std))

- select a subset from the dataset - uci_har_data of selected variables(columns)  - selected_variables (Subject, Activity and measures contains "mean()" and "std()") using the function select(), and then send the result to new data frame - selected_dataset by the script:

 > selected_dataset <- select(uci_har_data, one_of(selected_variables))

(3) Step3 starts by reading the activity tables of the file of activity labels from "UCI-HAR-Dataset" by read.table() 
and send it to data frame - activity_table, and then prepare a vector of activity names from second column(V2), 
and send the result to - activity_names by two scripts:

  > activity_table <- read.table ("UCI-HAR-Dataset/activity_labels.txt")

  > activity_names <- as.vector(activity_table$V2)

- then label the activity column in selected_dataset with the labels - activity_names using the function factor() by the following script: 

   > selected_dataset$Activity <- factor (selected_dataset$Activity, labels = activity_names)

(4) Step4 starts by generating a descriptive variable names from the original variable names in selected_dataset by replacing "-" with "_" and removing "()" from the names of all columns in the dataset, using function gsub(), and send the modified names to the new vector - modified_variables, by two scripts:

  > modified_variables <- gsub("-","_",names(selected_dataset))
 
  > modified_variables <- gsub("[(][)]","",modified_variables)

-then label the names of the dataset  - selected_dataset with this modified names of variables - modified_variables using function names() by the script:

  > names(selected_dataset) <- modified_variables

(5) Step5 starts by obtaining a vector of measure names in the dataset - selected_dataset using function names(), and send the result to measure_vars, by the script: 

  > measure_vars <- names(selected_dataset[3:ncol(selected_dataset)])
 
- then convert the dataset into a molten data frame using function melt() when the id includes two variables of "Subject" and "Activity", and the measure variables are the vector - measure_vars, and send the result to new frame - dataset_Melt by the script:

  > dataset_Melt <- melt(selected_dataset,id=c("Subject","Activity"),measure.vars=measure_vars)

- generate a tidy dataset from the molten frame - dataset_melt by calculating the average of each variable for each activity and each subject using the function dcast(), and send the new data frame to Tidy_Data_Avg, by the script:

  > Tidy_Data_Avg <- dcast(dataset_Melt, Subject + Activity ~ variable, mean)

- then write the tidy dataset - Tidy_Data_Avg to file - tidy_dataset.txt in "UCI-HAR-Dataset"" using write.table(). 
and also write the names of varibles of the tidy dataset - Tidy_Data_Avg to file - tidy_var_names.txt in "UCI-HAR-Dataset"" 
using write.table(), by two scripts:

  > write.table  (Tidy_Data_Avg, file = "UCI-HAR-Dataset/tidy_dataset.txt")
 
  > write.table  (names(Tidy_Data_Avg), file = "UCI-HAR-Dataset/tidy_var_names.txt")
  
  <End of Scripts>
