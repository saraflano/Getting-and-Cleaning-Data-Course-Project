### Getting and Cleaning Data Week 4 Project

## Download data file
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./data/Dataset.zip",method="curl")

## Unzip data file
unzip(zipfile="./data/Dataset.zip", exdir="./data")

## Get list of files from "UCI HAR Dataset" folder
path_rf <- file.path("./data" , "UCI HAR Dataset")
files <-list.files(path_rf, recursive=TRUE)
files

## Read data files
dataActivityTest  <- read.table(file.path(path_rf, "test" , "Y_test.txt" ),header = FALSE)
dataActivityTrain <- read.table(file.path(path_rf, "train", "Y_train.txt"),header = FALSE)

dataSubjectTrain <- read.table(file.path(path_rf, "train", "subject_train.txt"),header = FALSE)
dataSubjectTest  <- read.table(file.path(path_rf, "test" , "subject_test.txt"),header = FALSE)

dataFeaturesTest  <- read.table(file.path(path_rf, "test" , "X_test.txt" ),header = FALSE)
dataFeaturesTrain <- read.table(file.path(path_rf, "train", "X_train.txt"),header = FALSE)

## Merge test and train data
dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity <- rbind(dataActivityTrain, dataActivityTest)
dataFeatures <- rbind(dataFeaturesTrain, dataFeaturesTest)

## Label variables
colnames(dataSubject) <- c("subject")
colnames(dataActivity) <- c("activity")
dataFeaturesNames <- read.table(file.path(path_rf, "features.txt"),head=FALSE)
colnames(dataFeatures) <- dataFeaturesNames$V2

## Merge data
dataMerged <- cbind(dataSubject, dataActivity, dataFeatures)

## Extract mean and standard deviation data
subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]
selectedNames<-c(as.character(subdataFeaturesNames), "subject", "activity" )
dataExtracted <-subset(dataMerged, select=selectedNames)
str(dataExtracted)

## Add descriptive activity names
dataActivityNames <- read.table(file.path(path_rf, "activity_labels.txt"),head=FALSE)
dataExtracted$activity <- factor(dataExtracted$activity, 
                                 levels = c(1,2,3,4,5,6), 
                                 labels = dataActivityNames$V2)

## Label data with descriptive variable names
names(dataExtracted) <- gsub("^t", "time", names(dataExtracted))
names(dataExtracted) <- gsub("Gyro", "gyroscope", names(dataExtracted))
names(dataExtracted) <- gsub("Acc", "accelerometer", names(dataExtracted))
names(dataExtracted) <- gsub("Mag", "magnitude", names(dataExtracted))
names(dataExtracted) <- gsub("^f", "frequency", names(dataExtracted))
names(dataExtracted) <- gsub("BodyBody", "Body", names(dataExtracted))

## Create data set with average of each variable for each activity and subject
library(plyr)
dataAverages <- aggregate(. ~subject + activity, dataExtracted, mean)
dataAverages <- dataAverages[order(dataAverages$subject,dataAverages$activity),]
write.table(dataAverages, file = "tidydata.txt", row.name=FALSE)



