This is the final project from the Corsera Course:  "Getting and Cleaning Data".  The purpose is to demonstrate the ability to load data into R, clean it up and then produce a "Tidy dataset".

The raw data is downloaded from the following link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Run the R script run_analysis.R, which via a series of functions generates the final dataset averageActivity.txt

This is a "Tidy dataset" as each row represents a single observation for each of the six activities carried out by each subject, where we take the average of each mean and standard deviation of each measurement.  Also, each column in the table represents a single variable - ie the subject name, activity and various measurements.