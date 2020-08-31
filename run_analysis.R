setwd("/home/kris/Documents/R Programming/MyRScripts/GetCleanData/Final Project")
library("dplyr")
library("reshape2")

#read in raw data
testSubjects <- read.table("./test/subject_test.txt")
trainSubjects <- read.table("./train/subject_train.txt")
  
testActivity <- read.table("./test/y_test.txt")
trainActivity <- read.table("./train/y_train.txt")

testFeatures <- read.table("./test/X_test.txt")
trainFeatures <- read.table("./train/X_train.txt")

activityNames <- read.table("activity_labels.txt") 
featureNamesTable <- read.table("features.txt")
  
#combine above into a single dataframe
subjectColumn <- rbind(testSubjects,trainSubjects)
activityColumn <- rbind(testActivity,trainActivity)
featureColumn <- rbind(testFeatures,trainFeatures)
combinedData <- cbind(subjectColumn,activityColumn,featureColumn)

#give descriptive names to columns & activity values
#convert first 2 cols to factors
featureNames <- as.character(featureNamesTable$V2)
names(combinedData) <- c("subject","activity",featureNames)
meansStdColumns <- c("activity","subject","mean()","std()")
combinedDataMeanStd <- select(combinedData,contains(meansStdColumns))

activityNames[,2] <- as.character(activityNames[,2])
combinedDataMeanStd$activity <- factor(combinedDataMeanStd$activity, 
                            levels = activityNames[,1], labels = activityNames[,2])
combinedDataMeanStd$subject <- as.factor(combinedDataMeanStd$subject)

#tidy up columns by making all lower case and removing non alphanum characters
combinedDataMeanStd$activity <- tolower(combinedDataMeanStd$activity)


  names(combinedDataMeanStd) <- gsub("\\()","",names(combinedDataMeanStd))
  names(combinedDataMeanStd) <- gsub("-","",names(combinedDataMeanStd))
  names(combinedDataMeanStd) <- tolower(names(combinedDataMeanStd))

#move all measurement variables and values into two columns
#recasts table so that it lists average of each measurement by subject & activity  
skinnytable <- melt(combinedDataMeanStd, id = c("subject", "activity"))

averageActivity <- dcast(skinnytable, subject + activity ~ variable, mean)
#export final Tidy table
write.table(averageActivity, "./averageActivity.txt", row.names = FALSE, quote = FALSE)

tidyTable <- read.table("averageActivity.txt",header = TRUE)