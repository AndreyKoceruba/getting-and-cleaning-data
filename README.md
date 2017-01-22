# Getting and Cleaning Data Course Project
## Files description
This repository contains the following files:
* CodeBook.md - describes the variables, the data, and any transformations or work that performed to clean up the data 
* "Tidy Set.csv" - contains the tidy data set obtained after processing raw data
* run_analysis.R - R script which process the raw data and save the result (tidy data) to the file "Tidy Set.csv"

## run_analysis.R script algorithm
1. Assign necessary paths to variables
2. Download and unpack zip archive to working directory if it doesn't exists
3. Load feature names
4. Load the test set
5. Assign features to the test set
6. Load subject IDs for the test set
7. Load activities for the test set
8. Union all data from steps 5. 6. 7. together
9. Assign features to the training set
10. Load subject IDs for the training set
11. Load activities for the training set
12. Union all data from steps 9. 10. 11. together
13. Merges the training set and test set
14. Select required features from resulting data set
15. Load activity labels
16. Join data set from step 14 and activity labels
17. Group result data set by activity labels and subject and calculate mean of every feature in each group
18. Save tidy data to "Tidy Set.csv"