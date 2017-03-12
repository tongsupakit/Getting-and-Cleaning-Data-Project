# Set working directory
setwd("C:/Users/Tong/Desktop/Coursera/data/course3/UCI HAR Dataset")

# Break down steps per each main step specified in the assignment. 
# 1.Merges the training and the test sets to create one data set.
##  1.1) Read features to be used as variables in the dataset
features <- read.table("features.txt",sep = " ")

##  1.2) Read training data and subjects, then bind subject and train data together 
train_x <- read.table("./train/X_train.txt",strip.white = TRUE)
train_y <- read.table("./train/Y_train.txt")
subject_train <- read.table("./train/subject_train.txt")
train_data <- cbind(subject_train,train_y,train_x)

##  1.3) Set variable names for train_data where the first variable is Volunteer_No 
##    and the following variables are the features
names(train_data) <- c("subject","activity",as.vector(features[,2]))

##  1.4) repeat step 2-3 with test data
test_x <- read.table("./test/X_test.txt",strip.white = TRUE)
test_y <- read.table("./test/Y_test.txt")
subject_test <- read.table("./test/subject_test.txt")
test_data <- cbind(subject_test,test_y,test_x)
names(test_data) <- c("subject","activity",as.vector(features[,2]))

##  1.5) Bind Train data and Test data
all_data <- rbind(train_data,test_data)

# 2.Extracts only the measurements on the mean and standard deviation for each measurement.

##  2.1) Extract only mean and standard variation variables
##   (variable names which contains "mean()" or "std()") 
##   while keeping "subject" and "activity" as the 1st and 2nd variables. 
all_mean_std <- cbind(all_data[,1:2],all_data[,grepl("mean\\(\\)|std\\(\\)",names(all_data))])

# 3.Uses descriptive activity names to name the activities in the data set
##  3.1) Read Activity label from activity_labels.txt
##    Set variable names to lower case and remove underscore.
activity_label <- read.table("./activity_labels.txt",sep = " ")
activity_label[,2] <- tolower(activity_label[,2])
activity_label[,2] <- gsub("_","",activity_label[,2])

##  3.2) matching and replacing "activity" variable in all_mean_std dataset with the describtive names in previous step
all_mean_std[,2] <- activity_label[match(all_mean_std$activity,activity_label[,1]),2]

# 4.Appropriately labels the data set with descriptive variable names.
##  4.1) set all variable names to lower case
names(all_mean_std) <- tolower(names(all_mean_std))

##  4.2) Set prefix of variables starting with "t" with "time" which is more describtive
##  4.3) Set prefix of variables starting with "f" with "freq" which is more describtive
names(all_mean_std) <- gsub("^t","time",names(all_mean_std))
names(all_mean_std) <- gsub("^f","freq",names(all_mean_std))

##  4.4) replace "acc" with "acceleration", "gyro" with "gyroscope" and "mag" with "magnitude"
names(all_mean_std) <- gsub("acc","acceleration",names(all_mean_std))
names(all_mean_std) <- gsub("gyro","gyroscope",names(all_mean_std))
names(all_mean_std) <- gsub("mag","magnitude",names(all_mean_std))

# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
##  5.1) Load "reshape2" library
library(reshape2)

##  5.2) Melt all_mean_std dataset with Id = subject and activity, variables are all mean and stardard variables
allmeanstdmelt <- melt(all_mean_std,id = c("subject","activity"),measure.vars = names(all_mean_std[,-c(1,2)]) )
allmeanstdmelt$activity <- as.factor(allmeanstdmelt$activity)

##  5.3) Average each variable for each subject and activity by using dcast function on the allmeanstdmelt dataset from the previous step
avgeach <- dcast(allmeanstdmelt,subject + activity ~ variable,mean)

##  5.4) Write the dataset from the previous table into file using write.table function
write.table(avgeach,"./avgeach_tidy.txt")

## Done!!