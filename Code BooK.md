# Study design:
===============

This tidy data was generated from the original dataset of Human Activity Recognition Using Smartphones [1]. 
The original dataset was collected from the experiments carried out with a group of 30 volunteers within an age bracket
of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial 
linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label 
the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected 
for generating the training data and 30% the test data.

For each record in the data set, it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The original dataset was cleaned to prepare this tidy dataset using the following 5 steps: 

1- Merging the training and the test sets to create one data set.
2- Extracting only the measurements on the mean and standard deviation for each measurement. 
3- Using descriptive activity names to name the activities in the data set
4- Labelling the data set with descriptive variable names. 
5- Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

The resulting tidy dataset is a dataset of average of mean and std measurements for each activity and each subject.
The tidy dataset contains 180 objects and 68 variables. 

# Code book:
===============

1-  Subject   2 
    The identifier of the subject who carried out the experiment
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30

2-  Activity  18
    The activity label
     1-WALKING
     2-WALKING_UPSTAIRS
     3-WALKING_DOWNSTAIRS
     4-SITTING
     5-STANDING
     6-LAYING

3-  tBodyAcc_mean_X   10
     Average of time domain signals of body acceleration means for X-axis
     -0.999999999..0.999999999

4-  tBodyAcc_mean_Y   10
     Average of time domain signals of body acceleration means for Y-axis
     -0.999999999..0.999999999

5-  tBodyAcc_mean_Z   10
     Average of time domain signals of body acceleration means for Z-axis
     -0.999999999..0.999999999
	 
6-  tGravityAcc_mean_X  10
     Average of time domain signals of gravity acceleration means for X-axis
	 -0.999999999..0.999999999
	 
7-  tGravityAcc_mean_Y  10
     Average of time domain signals of gravity acceleration means for Y-axis
	 -0.999999999..0.999999999

8-  tGravityAcc_mean_Z   10
     Average of time domain signals of gravity acceleration means for Z-axis
	 -0.999999999..0.999999999

9-  tBodyAccJerk_mean_X   10
     Average of time-domain Jerk signals of body linear acceleration means at X-axis
     -0.999999999..0.999999999
	 
10- tBodyAccJerk_mean_Y   10
     Average of time-domain Jerk signals of body linear acceleration means at Y-axis
     -0.999999999..0.999999999

11- tBodyAccJerk_mean_Z   10
     Average of time-domain Jerk signals of body linear acceleration means at Z-axis
     -0.999999999..0.999999999

12- tBodyGyro_mean_X   10
     Average of time domain signals of body angular velocity means at X-axis
     -0.999999999..0.999999999    

13- tBodyGyro_mean_Y   10
     Average of time domain signals of body angular velocity means at X-axis
     -0.999999999..0.999999999      
	 
14- tBodyGyro_mean_Z   10
     Average of time domain signals of body angular velocity means at X-axis
     -0.999999999..0.999999999     

15- tBodyGyroJerk_mean_X   10
     Average of time-domain Jerk signals of angular velocity means at X-axis
     -0.999999999..0.999999999
	 
16- tBodyGyroJerk_mean_Y    10
     Average of time-domain Jerk signals of angular velocity means at Y-axis
     -0.999999999..0.999999999
	 
17- tBodyGyroJerk_mean_Z    10
     Average of time-domain Jerk signals of angular velocity means at Z-axis
     -0.999999999..0.999999999
	 
18- tBodyAccMag_mean    10
     Average of time-domain magnitude of body acceleration means
     -0.999999999..0.999999999
	 
19- tGravityAccMag_mean   10
     Average of time-domain magnitude of gravity acceleration means
	 -0.999999999..0.999999999
	 
20- tBodyAccJerkMag_mean   10
     Average of time-domain Jerk magnitude of body linear acceleration means
     -0.999999999..0.999999999

21- tBodyGyroMag_mean   10
     Average of time-domain magnitude of body angular velocity means
     -0.999999999..0.999999999  
	 
22- tBodyGyroJerkMag_mean   10
     Average of time-domain Jerk magnitude of angular velocity means
     -0.999999999..0.999999999

23-  fBodyAcc_mean_X   10
     Average of frequency domain signals of body acceleration means for X-axis
     -0.999999999..0.999999999

24-  fBodyAcc_mean_Y   10
     Average of frequency domain signals of body acceleration means for Y-axis
     -0.999999999..0.999999999

25-  fBodyAcc_mean_Z   10
     Average of frequency domain signals of body acceleration means for Z-axis
     -0.999999999..0.999999999
	 
26-  fBodyAccJerk_mean_X   10
     Average of frequency-domain Jerk signals of body linear acceleration means at X-axis
     -0.999999999..0.999999999
	 
27- fBodyAccJerk_mean_Y   10
     Average of frequency-domain Jerk signals of body linear acceleration means at Y-axis
     -0.999999999..0.999999999

28- fBodyAccJerk_mean_Z   10
     Average of frequency-domain Jerk signals of body linear acceleration means at Z-axis
     -0.999999999..0.999999999	 

29- fBodyGyro_mean_X   10
     Average of frequency domain signals of body angular velocity means at X-axis
     -0.999999999..0.999999999    

30- fBodyGyro_mean_Y   10
     Average of frequency domain signals of body angular velocity means at X-axis
     -0.999999999..0.999999999      
	 
31- fBodyGyro_mean_Z   10
     Average of frequency domain signals of body angular velocity means at X-axis
     -0.999999999..0.999999999    

32- fBodyAccMag_mean    10
     Average of frequency-domain magnitude of body acceleration means
     -0.999999999..0.999999999
	 
33- fBodyBodyAccJerkMag_mean   10
     Average of time-domain Jerk magnitude of body linear acceleration means
     -0.999999999..0.999999999

34- fBodyBodyGyroMag_mean   10
     Average of frequency-domain magnitude of body angular velocity means
     -0.999999999..0.999999999  
	 
35- fBodyBodyGyroJerkMag_mean   10
     Average of frequency-domain Jerk magnitude of angular velocity means
     -0.999999999..0.999999999
	 
36- tBodyAcc_std_X   10
     Average of time domain signals of body acceleration stds for X-axis
     -0.999999999..0.999999999

37-  tBodyAcc_std_Y   10
     Average of time domain signals of body acceleration stds for Y-axis
     -0.999999999..0.999999999

38-  tBodyAcc_std_Z   10
     Average of time domain signals of body acceleration stds for Z-axis
     -0.999999999..0.999999999
	 
39-  tGravityAcc_std_X  10
     Average of time domain signals of gravity acceleration stds for X-axis
	 -0.999999999..0.999999999
	 
40-  tGravityAcc_std_Y  10
     Average of time domain signals of gravity acceleration stds for Y-axis
	 -0.999999999..0.999999999

41-  tGravityAcc_std_Z   10
     Average of time domain signals of gravity acceleration stds for Z-axis
	 -0.999999999..0.999999999

42-  tBodyAccJerk_std_X   10
     Average of time-domain Jerk signals of body linear acceleration stds at X-axis
     -0.999999999..0.999999999
	 
43- tBodyAccJerk_std_Y   10
     Average of time-domain Jerk signals of body linear acceleration stds at Y-axis
     -0.999999999..0.999999999

44- tBodyAccJerk_std_Z   10
     Average of time-domain Jerk signals of body linear acceleration stds at Z-axis
     -0.999999999..0.999999999

45- tBodyGyro_std_X   10
     Average of time domain signals of body angular velocity stds at X-axis
     -0.999999999..0.999999999    

46- tBodyGyro_std_Y   10
     Average of time domain signals of body angular velocity stds at X-axis
     -0.999999999..0.999999999      
	 
47- tBodyGyro_std_Z   10
     Average of time domain signals of body angular velocity stds at X-axis
     -0.999999999..0.999999999     

48- tBodyGyroJerk_std_X   10
     Average of time-domain Jerk signals of angular velocity stds at X-axis
     -0.999999999..0.999999999
	 
49- tBodyGyroJerk_std_Y    10
     Average of time-domain Jerk signals of angular velocity stds at Y-axis
     -0.999999999..0.999999999
	 
50- tBodyGyroJerk_std_Z    10
     Average of time-domain Jerk signals of angular velocity stds at Z-axis
     -0.999999999..0.999999999
	 
51- tBodyAccMag_std    10
     Average of time-domain magnitude of body acceleration stds
     -0.999999999..0.999999999
	 
52- tGravityAccMag_std   10
     Average of time-domain magnitude of gravity acceleration stds
	 -0.999999999..0.999999999
	 
53- tBodyAccJerkMag_std   10
     Average of time-domain Jerk magnitude of body linear acceleration stds
     -0.999999999..0.999999999

54- tBodyGyroMag_std   10
     Average of time-domain magnitude of body angular velocity stds
     -0.999999999..0.999999999  
	 
55- tBodyGyroJerkMag_std   10
     Average of time-domain Jerk magnitude of angular velocity stds
     -0.999999999..0.999999999	 

56-  fBodyAcc_std_X   10
     Average of frequency domain signals of body acceleration stds for X-axis
     -0.999999999..0.999999999

57-  fBodyAcc_std_Y   10
     Average of frequency domain signals of body acceleration stds for Y-axis
     -0.999999999..0.999999999

58-  fBodyAcc_std_Z   10
     Average of frequency domain signals of body acceleration stds for Z-axis
     -0.999999999..0.999999999
	 
59-  fBodyAccJerk_std_X   10
     Average of frequency-domain Jerk signals of body linear acceleration stds at X-axis
     -0.999999999..0.999999999
	 
60- fBodyAccJerk_std_Y   10
     Average of frequency-domain Jerk signals of body linear acceleration stds at Y-axis
     -0.999999999..0.999999999

61- fBodyAccJerk_std_Z   10
     Average of frequency-domain Jerk signals of body linear acceleration stds at Z-axis
     -0.999999999..0.999999999	 

62- fBodyGyro_std_X   10
     Average of frequency domain signals of body angular velocity stds at X-axis
     -0.999999999..0.999999999    

63- fBodyGyro_std_Y   10
     Average of frequency domain signals of body angular velocity stds at X-axis
     -0.999999999..0.999999999      
	 
64- fBodyGyro_std_Z   10
     Average of frequency domain signals of body angular velocity stds at X-axis
     -0.999999999..0.999999999    

65- fBodyAccMag_std    10
     Average of frequency-domain magnitude of body acceleration stds
     -0.999999999..0.999999999
	 
66- fBodyBodyAccJerkMag_std   10
     Average of time-domain Jerk magnitude of body linear acceleration stds
     -0.999999999..0.999999999

67- fBodyBodyGyroMag_std   10
     Average of frequency-domain magnitude of body angular velocity stds
     -0.999999999..0.999999999  
	 
68- fBodyBodyGyroJerkMag_std   10
     Average of frequency-domain Jerk magnitude of angular velocity stds
     -0.999999999..0.999999999

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on 
Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living 
(IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012. This dataset is distributed AS-IS and no responsibility implied or explicit
can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited. 
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
