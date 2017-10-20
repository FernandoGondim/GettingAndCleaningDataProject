# GettingAndCleaningDataProject

Hi!

There are two scripts in this repo: 
1)tidyData.R, that run these tasks for xtest and xtrain:
- Reads all the files
- Names the variables from features.txt
- Creates a var for identify the subject of each observation
- Creates a var for identify the activity of each observation
- Renames rows
- Creates variable called 'ID'

2) run_analysis.R, that run these tasks:
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Obs.: The tasks "Uses descriptive activity names to name the activities in the data set" and "Appropriately labels the data set with descriptive variable names." were met in the first script. 

Best regards,
Fernando Gondim
  
