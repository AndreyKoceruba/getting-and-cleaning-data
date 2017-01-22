library(dplyr)

# variables, which contains a path to necessary files
dataset_zip_name <- "Dataset.zip"
subject_test_name <- "UCI HAR Dataset/test/subject_test.txt"
X_test_name <- "UCI HAR Dataset/test/X_test.txt"
y_test_name <- "UCI HAR Dataset/test/y_test.txt"
subject_train_name <- "UCI HAR Dataset/train/subject_train.txt"
X_train_name <- "UCI HAR Dataset/train/X_train.txt"
y_train_name <- "UCI HAR Dataset/train/y_train.txt"
activity_labels_name <- "UCI HAR Dataset/activity_labels.txt"
features_name <- "UCI HAR Dataset/features.txt"

# download and unpack archive if it doesn't exists
if(!file.exists(dataset_zip_name)) {
    download.file(
        url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
        destfile = dataset_zip_name
    )
    unzip("Dataset.zip")
}

# get feature names
features <- read.table(file = features_name)
colnames(features) <- c("ID", "Name")

# get test set and assign feature names to each column
test_set <- read.table(file = X_test_name)
colnames(test_set) <- features[, "Name"]

# get subject IDs for test set
subject_test <- read.table(file = subject_test_name)
colnames(subject_test) = "subject"

# get activities for test set
y_test <- read.table(file = y_test_name)
colnames(y_test) = "y"

# pull all test data together
test_set <- cbind(test_set, subject_test, y_test)

# get training set and assign feature names to each column
training_set <- read.table(file = X_train_name)
colnames(training_set) <- features[, "Name"]

# get subject IDs for training set
subject_train <- read.table(file = subject_train_name)
colnames(subject_train) = "subject"

# get activities for training set
y_train <- read.table(file = y_train_name)
colnames(y_train) = "y"

# pull all training data together
training_set <- cbind(training_set, subject_train, y_train)

# union training and test sets
data_set <- rbind(training_set, test_set)

# select required features 
data_set <- data_set[, grep("mean\\(\\)|std\\(\\)|^subject$|^y$", tolower(colnames(data_set)))]

# get activity labels
activity_labels <- read.table(file = activity_labels_name, col.names = c("ID", "activity"))

# join required features and activity labels and drop activity,
# because result data set will contain activity labels
data_set <- merge(x = data_set, y = activity_labels, by.x = "y", by.y = "ID")
data_set <- subset(data_set, select = -y)

# get tidy data
# group data by activity labels and subject and calculate mean of each feature in each group
tidy_set <- data_set %>% group_by(activity, subject) %>% summarise_each(funs(mean))

# write tidy data to .csv
write.csv(tidy_set, file = "Tidy Set.csv", row.names = FALSE)
