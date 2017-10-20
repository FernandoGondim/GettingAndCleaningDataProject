# 1- Merges the training and the test sets to create one data set.
mergedData = rbind(xtest,xtrain)

# 2- Extracts only the measurements on the mean and standard deviation for each measurement.
mergedData["Mean",] = c(colMeans(mergedData[1:561], na.rm = TRUE), NA, NA, NA) # The last 3 variables (subject/activity/id) aren't measurement 
mergedData["StdDev",] = c(sapply(mergedData[1:561], sd), NA, NA, NA)

# 3- Uses descriptive activity names to name the activities in the data set
      # -> Descriptive activity names are stored in xtest$activity and xtrain$activity 

# 4- Appropriately labels the data set with descriptive variable names.
      # -> The original variable names, although complex, are descriptive. The new ones (subject/activity/id) are descriptive as well.

# 5- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
s = split(mergedData, mergedData$activity)
averages = sapply(s, function(x) colMeans(x[,1:561]))

s = split(mergedData, mergedData$subject)
averages = cbind(averages, sapply(s, function(x) colMeans(x[,1:561])))
averages = data.frame(averages) # Now is a data frame, as asked ;-)



