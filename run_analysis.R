## run_analysis.R
##
## Script for project for Data Scientist's Toolbox, Getting and Cleaning Data, creating the tidy data set from
## the raw data - assumes you have the dataset extracted to the local directory (for R) based on assignment 
## instructions.  Will create a variable called finalDataSet when finished.

# fileUrl <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# download.file(fileUrl,destfile="./sensorData.zip")
# unzip("./sensorData.zip")

library(plyr)
library(dplyr)
library(stringr)

## get the variable names and clean up
features <- read.table("./UCI HAR Dataset/features.txt", check.names=FALSE, stringsAsFactors = FALSE)
## go to lower case (preferred)
features[2] <- lapply(features[2], str_to_lower)
variableNames <- features$V2
variableNames <- gsub("^t", "timedomainsignal", variableNames)
variableNames <- gsub("^f", "fastfouriertransform", variableNames)
variableNames <- gsub("\\-mean\\(\\)", "meanvalue", variableNames)
variableNames <- gsub("\\-std\\(\\)", "standarddeviation", variableNames)
variableNames <- gsub("-", "", variableNames)

## load training data
##
xTraining <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE, sep="")
names(xTraining) <- variableNames
yTraining <- read.table("./UCI HAR Dataset/train/Y_train.txt", header=FALSE, sep="")
yTraining = dplyr::rename(yTraining, activitylevel=V1)
subTraining <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE, sep="")
subTraining <- dplyr::rename(subTraining, subjectid=V1)
trainingData <- cbind(subTraining, yTraining, xTraining)
## load test data
##
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE, sep="")
names(xTest) <- variableNames
yTest <- read.table("./UCI HAR Dataset/test/Y_test.txt", header=FALSE, sep="")
yTest = dplyr::rename(yTest, activitylevel=V1)
subTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE, sep="")
subTest <- dplyr::rename(subTest, subjectid=V1)
testData <- cbind(subTest, yTest, xTest)

## combine the two datasets
##
dataSet <- rbind(testData, trainingData)

## extract only columns w/means and std's and subject and activity
##
dataSet<-dataSet[,c(1,2,grep("meanvalue|standarddeviation", names(dataSet)))]

activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE, sep="")
activityLabels <- dplyr::rename(activityLabels, activitylevel=V1)
activityLabels <- dplyr::rename(activityLabels, activity=V2)
activityLabels[2] <- lapply(activityLabels[2], str_to_lower)
activityLabels$activity <- gsub("_","",activityLabels$activity)
suppressWarnings(dataSet <- merge(dataSet, activityLabels, by.x="activitylevel", by.y="activitylevel", sort=FALSE))

## get rid of the activitylevel column (just needed for joinging w/factor values)
dataSet <- subset(dataSet, select=-activitylevel)
## convert activity to factor
dataSet$activity <- as.factor(dataSet$activity)
## reorder columns
dataSet <- select(dataSet, 1,68,2:67)
## reorder data
dataSet <- dataSet[order(dataSet$subjectid, dataSet$activity),]
## extract subset of the means by subjectid and activity
dataSet <- ddply(dataSet, .(subjectid, activity), numcolwise(mean))

## update the col names to reflect our summarization (mean of numeric columns by subjectid and activity)
colnames(dataSet)[3:68] <- gsub("^", "average", colnames(dataSet)[3:68])

## save tidy data
write.table(dataSet, file=".//dataSet.txt", row.names=FALSE)
# use if you need to read back into R
# dataSet <-read.table("./dataSet.txt", header=TRUE)

## clean up environment
clean=ls()
finalDataSet <- dataSet
rm(list=clean)
rm(clean)
View(finalDataSet)
