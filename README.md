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
 used method "split -> sapply"
 first, the data set splitted by Subject and Activity
 then, the sapply function applied while list of columns - is original features data set
 (just numeric values, without additions - just rereaded)
 The result is  an objetc sized 561 x 180
 Where 561 - number of numeric parameters in Data
 180 = 30 x 6  - number of splittings (30 persons multiple 6 activity types)
 
 