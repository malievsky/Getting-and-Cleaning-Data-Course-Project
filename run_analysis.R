# Preparatory step: Data reading, checking for objects dimensons and sizes ####

features <- read.table("./data/UCI HAR Dataset/features.txt", header = FALSE, stringsAsFactors = FALSE)
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE, stringsAsFactors = FALSE)

testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE, stringsAsFactors = FALSE)
testActivity <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE, stringsAsFactors = FALSE)

trainSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE, stringsAsFactors = FALSE)
trainActivity <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE, stringsAsFactors = FALSE)

testData <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE, stringsAsFactors = FALSE)
object.size(testData) # 13285048 bytes

trainData <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE, stringsAsFactors = FALSE)
object.size(trainData) #33054688 bytes




## Step 1: Merge (append) Datasets #
# append "Subject" and "Activity" variables to features list:
tail(features1) # 561 561                 angle(Z,gravityMean)
features <- rbind(features, c("562", "Subject"))
features <- rbind(features, c("563", "Activity"))

# rename columns in trainActivity and testActivity sets:
names(trainActivity)[names(trainActivity)=="V1"] <- "V2"
names(testActivity)[names(testActivity)=="V1"] <- "V2"

# append "subject" and "activity" columns to main data sets:
testData <- cbind(testData, testSubject)
testData <- cbind(testData, testActivity)
trainData <- cbind(trainData, trainSubject)
trainData <- cbind(trainData, trainActivity)

Data <- rbind(testData, trainData)


## Step 2: Mean & std extracts
# 2.1 finding and storing of appearances strings "mean" and "std" within the features list:
meanCols <- grep("mean", features$V2)
stdCols <- grep("std", features$V2)

# 2.2 extracting (subsetting) of mean columns from Data:
meanMeasurements <- Data[, meanCols]
stdMeasurements <- Data[, stdCols]

 
## Step 3 dataset columns rename by features list
names(Data) <- features[, 2]


## Step 4 - replace activity column values
Data$Activity[Data1$Activity %in% "1"] <- "WALKING"
Data$Activity[Data1$Activity %in% "2"] <- "WALKING_UPSTAIRS"
Data$Activity[Data1$Activity %in% "3"] <- "WALKING_DOWNSTAIRS"
Data$Activity[Data1$Activity %in% "4"] <- "SITTING"
Data$Activity[Data1$Activity %in% "5"] <- "STANDING"
Data$Activity[Data1$Activity %in% "6"] <- "LAYING"

## Step 5:

