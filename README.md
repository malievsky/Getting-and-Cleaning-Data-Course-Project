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
 next, testData and trainData sets appended
Appending of Test and Train data sets. Simple.
resulting Data dimension and size:
 dim(Data) # [1] 10299   563
 object.size(Data) # 46363336 bytes
 
 
 Step2
 First, function grep used twice to find all appearances of "mean" and "std"
 strings witih "features".
 
 Second, the vectors used to subset Data:
 > meanMeasurements <- Data[, meanCols]
 > dim(meanMeasurements) # [1] 10299    46
 
 Step3
 function "names" used to assign "variables" dataset  as headers to "Data" frame
 > tail(names(Data))
[1] "angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)"                 "angle(Y,gravityMean)"                
[4] "angle(Z,gravityMean)"                 "Subject"                              "Activity"    

 Step4
 Content replacement for the variavle "Activity"
 
 Step5
 
 
 