# Getting-and-Cleaning-Data-Course-Project
# README

Step0 (preparatory)

It includes data reading + checking for reasult DataFrame dimensions/object sizes (to not overload the RAM)
Next dataframes created from provided files:

- features, [1] 561  2
- activityLabels, [1] 6 2

- testSubject, [1] 2947    1
- testData, [1] 2947  561
- testActivity, [1] 2947    1

- trainSubject, [1] 7352    1
- trainData, [1] 7352  561
- trainActivity, [1] 7352    1

Note: all dataframe sizes get by using of dim comnad as in example below:
dim(testData) #[1] 2947  561
object.size(testData) # 13285048 bytes


 
 Step 1
The "Subject" and "Activity" values added to "Features" data frame 
next, the "...Subject" and "...Activity" columns added to both train and test datasets
neaxt, testData and trainData sets appended
Appending of Test and Train data sets. Simple
resulting Data dimension and size:
 dim(Data) # [1] 10299   563
 object.size(Data) # 46363336 bytes
 
 
 Step2
 First, function grep used twice to find all appearances of "mean" and "std"
 strings witih "features":
 meanCols <- grep("mean", features$V2)
 meanCols
 # [1]   1   2   3  41  42  43  81  82  83 121 122 123 161 162 163 201 214 227 240 253 266 267 268 294 295 296 345 346 347 373 374 375
 # [33] 424 425 426 452 453 454 503 513 516 526 529 539 542 552
 stdCols <- grep("std", features$V2)
 stdCols
 #[1]   4   5   6  44  45  46  84  85  86 124 125 126 164 165 166 202 215 228 241 254 269 270 271 348 349 350 427 428 429 504 517 530
 #[33] 543
 
 Second, the vectors used to subset Data:
 meanMeasurements <- Data[, meanCols]
 dim(meanMeasurements) # [1] 10299    46
 
 Step3
 function "names" used to assign "variables" dataset  as headers to "Data" frame
 > tail(names(Data))
[1] "angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)"                 "angle(Y,gravityMean)"                
[4] "angle(Z,gravityMean)"                 "Subject"                              "Activity"    

 Step4
 function merge used to add another column to dataset.
 (from the table "activity_type")
 
 Step5
 