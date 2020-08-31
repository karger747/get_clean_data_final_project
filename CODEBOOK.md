The raw data is downloaded from the following link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

We read the following tables into R:

Subjects in study labelled from 1 to 30

1  ./test/subject_test.txt
2  ./train/subject_train.txt

Activities (walking, standing, etc) labelled from 1 to 6

3  ./test/y_test.txt")
4  ./train/y_train.txt")

features (measurements) taken in study

5  ./test/X_test.txt
6  ./train/X_train.txt

The following two tables contain descriptive labels for activities and variable names for the mesurements variables

7  activity_labels.txt") 
8  featureNamesTable <- read.table("features.txt")

run_analysis.R creates a dataset called combinedDataMeanStd, which in turn is used to make tidyTable.

variables in each of these datasets is as follows:

subject
factor variable 1 - 30 represents each subject in the study

activity
factor variables as follows

laying
sitting
standing
walking 
walking_downstairs
walking_upstairs

measurements variables include the mean and standard deviation of each feature

[1] "activity"                 "subject"                  "tbodyaccmeanx"           
 [4] "tbodyaccmeany"            "tbodyaccmeanz"            "tgravityaccmeanx"        
 [7] "tgravityaccmeany"         "tgravityaccmeanz"         "tbodyaccjerkmeanx"       
[10] "tbodyaccjerkmeany"        "tbodyaccjerkmeanz"        "tbodygyromeanx"          
[13] "tbodygyromeany"           "tbodygyromeanz"           "tbodygyrojerkmeanx"      
[16] "tbodygyrojerkmeany"       "tbodygyrojerkmeanz"       "tbodyaccmagmean"         
[19] "tgravityaccmagmean"       "tbodyaccjerkmagmean"      "tbodygyromagmean"        
[22] "tbodygyrojerkmagmean"     "fbodyaccmeanx"            "fbodyaccmeany"           
[25] "fbodyaccmeanz"            "fbodyaccjerkmeanx"        "fbodyaccjerkmeany"       
[28] "fbodyaccjerkmeanz"        "fbodygyromeanx"           "fbodygyromeany"          
[31] "fbodygyromeanz"           "fbodyaccmagmean"          "fbodybodyaccjerkmagmean" 
[34] "fbodybodygyromagmean"     "fbodybodygyrojerkmagmean" "tbodyaccstdx"            
[37] "tbodyaccstdy"             "tbodyaccstdz"             "tgravityaccstdx"         
[40] "tgravityaccstdy"          "tgravityaccstdz"          "tbodyaccjerkstdx"        
[43] "tbodyaccjerkstdy"         "tbodyaccjerkstdz"         "tbodygyrostdx"           
[46] "tbodygyrostdy"            "tbodygyrostdz"            "tbodygyrojerkstdx"       
[49] "tbodygyrojerkstdy"        "tbodygyrojerkstdz"        "tbodyaccmagstd"          
[52] "tgravityaccmagstd"        "tbodyaccjerkmagstd"       "tbodygyromagstd"         
[55] "tbodygyrojerkmagstd"      "fbodyaccstdx"             "fbodyaccstdy"            
[58] "fbodyaccstdz"             "fbodyaccjerkstdx"         "fbodyaccjerkstdy"        
[61] "fbodyaccjerkstdz"         "fbodygyrostdx"            "fbodygyrostdy"           
[64] "fbodygyrostdz"            "fbodyaccmagstd"           "fbodybodyaccjerkmagstd"  
[67] "fbodybodygyromagstd"      "fbodybodygyrojerkmagstd" 
