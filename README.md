# Getting-and-Cleaning-Data-Project
## Peer-graded Assignment: Getting and Cleaning Data Course Project</br>
### This project is to clean up the merged train and test data and create an indenpendent tidy dataset. This project contains three files</br>
#### 1) The file "avgeach_tidy.txt" contains the tidy dataset which is the average of each variable for each activity and each subject.  The file was created by "write.table()" function, hence the appropriate function to read the dataset is "read.table()" function.</br>
#### 2) The R file "run_analysis.R" contains script to perform cleaning up and creating the tidy dataset which is the file "avgeach_tidy.txt" with descriptive explanation of each step.</br>
#### 3) The "Codebook.md" file describes variables, data and steps to perform the work of cleaning data and creating the tidy dataset</br>

## Steps to perform cleaning data
 0.Set working directory

 1. Merges the training and the test sets to create one data set.
  1.1) Read features to be used as variables in the dataset

  1.2) Read training data and subjects, then bind subject and train data together 

  1.3) Set variable names for train_data where the first variable is Volunteer_No and the following variables are the features

  1.4) repeat step 2-3 with test data

  1.5) Bind Train data and Test data

 2. Extracts only the measurements on the mean and standard deviation for each measurement.

  2.1) Extract only mean and standard variation variables (variable names which contains "mean()" or "std()") while keeping "subject" and "activity" as the 1st and 2nd variables. 

 3. Uses descriptive activity names to name the activities in the data set
  3.1) Read Activity label from activity_labels.txt
    Set variable names to lower case and remove underscore.

  3.2) matching and replacing "activity" variable in all_mean_std dataset with the describtive names in previous step

 4. Appropriately labels the data set with descriptive variable names.
  4.1) set all variable names to lower case

  4.2) Set prefix of variables starting with "t" with "time" which is more describtive
  4.3) Set prefix of variables starting with "f" with "freq" which is more describtive

  4.4) replace "acc" with "acceleration", "gyro" with "gyroscope" and "mag" with "magnitude"

 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
  5.1) Load "reshape2" library

  5.2) Melt all_mean_std dataset with Id = subject and activity, variables are all mean and stardard variables

  5.3) Average each variable for each subject and activity by using dcast function on the allmeanstdmelt dataset from the previous step

  5.4) Write the dataset from the previous table into file using write.table function

 Done!!
  



