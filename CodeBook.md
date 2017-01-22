# Code Book
## About this Code Book
This Code Book contains information about data, which are in file "Tidy Set.txt"
## Data Source
The data set has downloaded from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.<br />
For more information about this data, one can use this link http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
or one read the file README.txt from .zip archive from first link.
## "Tidy Set.txt" processing
"Tidy Set.txt" is obtain by processing next data source files:
* subject_test.txt
* X_test.txt
* y_test.txt
* subject_train.txt
* X_train.txt
* y_train.txt
* activity_labels.txt
* features.txt

1. Features from features.txt was assigned to data from X_test.txt and X_train.txt
2. Then both data sets was united with data from subject_test.txt, y_test.txt and subject_train.txt, y_train.txt respectively
3. Next, both resulted data sets was united to one data set
4. Then features was selected that contains mean, standart deviation, subject and activity
5. Data set from previous step was merged with data from activity_labels.txt
6. Finally, mean of each feature was calculated in each group of activity, subject

## Features list
activity<br />
subject<br />
tBodyAcc-mean()-X<br />
tBodyAcc-mean()-Y<br />
tBodyAcc-mean()-Z<br />
tBodyAcc-std()-X<br />
tBodyAcc-std()-Y<br />
tBodyAcc-std()-Z<br />
tGravityAcc-mean()-X<br />
tGravityAcc-mean()-Y<br />
tGravityAcc-mean()-Z<br />
tGravityAcc-std()-X<br />
tGravityAcc-std()-Y<br />
tGravityAcc-std()-Z<br />
tBodyAccJerk-mean()-X<br />
tBodyAccJerk-mean()-Y<br />
tBodyAccJerk-mean()-Z<br />
tBodyAccJerk-std()-X<br />
tBodyAccJerk-std()-Y<br />
tBodyAccJerk-std()-Z<br />
tBodyGyro-mean()-X<br />
tBodyGyro-mean()-Y<br />
tBodyGyro-mean()-Z<br />
tBodyGyro-std()-X<br />
tBodyGyro-std()-Y<br />
tBodyGyro-std()-Z<br />
tBodyGyroJerk-mean()-X<br />
tBodyGyroJerk-mean()-Y<br />
tBodyGyroJerk-mean()-Z<br />
tBodyGyroJerk-std()-X<br />
tBodyGyroJerk-std()-Y<br />
tBodyGyroJerk-std()-Z<br />
tBodyAccMag-mean()<br />
tBodyAccMag-std()<br />
tGravityAccMag-mean()<br />
tGravityAccMag-std()<br />
tBodyAccJerkMag-mean()<br />
tBodyAccJerkMag-std()<br />
tBodyGyroMag-mean()<br />
tBodyGyroMag-std()<br />
tBodyGyroJerkMag-mean()<br />
tBodyGyroJerkMag-std()<br />
fBodyAcc-mean()-X<br />
fBodyAcc-mean()-Y<br />
fBodyAcc-mean()-Z<br />
fBodyAcc-std()-X<br />
fBodyAcc-std()-Y<br />
fBodyAcc-std()-Z<br />
fBodyAccJerk-mean()-X<br />
fBodyAccJerk-mean()-Y<br />
fBodyAccJerk-mean()-Z<br />
fBodyAccJerk-std()-X<br />
fBodyAccJerk-std()-Y<br />
fBodyAccJerk-std()-Z<br />
fBodyGyro-mean()-X<br />
fBodyGyro-mean()-Y<br />
fBodyGyro-mean()-Z<br />
fBodyGyro-std()-X<br />
fBodyGyro-std()-Y<br />
fBodyGyro-std()-Z<br />
fBodyAccMag-mean()<br />
fBodyAccMag-std()<br />
fBodyBodyAccJerkMag-mean()<br />
fBodyBodyAccJerkMag-std()<br />
fBodyBodyGyroMag-mean()<br />
fBodyBodyGyroMag-std()<br />
fBodyBodyGyroJerkMag-mean()<br />
fBodyBodyGyroJerkMag-std()<br />