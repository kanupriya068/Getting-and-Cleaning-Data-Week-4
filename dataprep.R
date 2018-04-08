#base data
activities <- read.delim("activity_labels.txt",header = FALSE,sep = "",col.names = c("Activity.ID","Activity.Name"))
features <- read.delim("features.txt",header = FALSE,sep = "",col.names = c("Feature.ID","Feature.Name"))
#Training Data
Train.Sub <- read.delim("../UCI HAR Dataset/train/subject_train.txt",header = FALSE,sep = "",col.names = c("Subject.ID"))
Train.X <- read.delim("../UCI HAR Dataset/train/X_train.txt",header = FALSE,sep = "",col.names =features$Feature.Name)
Train.Y <- read.delim("../UCI HAR Dataset/train/y_train.txt",header = FALSE,sep = "",col.names =c("Activity.ID"))
Train.all<- cbind(Train.Sub,Train.Y,Train.X)
#Test Data
Test.Sub <- read.delim("../UCI HAR Dataset/test/subject_test.txt",header = FALSE,sep = "",col.names = c("Subject.ID"))
Test.Y <- read.delim("../UCI HAR Dataset/test/y_test.txt",header = FALSE,sep = "",col.names =c("Activity.ID"))
Test.X <- read.delim("../UCI HAR Dataset/test/X_test.txt",header = FALSE,sep = "",col.names =features$Feature.Name)
Test.all<- cbind(Test.Sub,Test.Y,Test.X)
#Merge Test & Train
Data <-rbind(Train.all,Test.all) %>% inner_join(activities,by="Activity.ID")
#Naming activities in the dataset
Data <- Data %>% select(Subject.ID, Activity.Name, contains("mean.."), contains("std.."))
Data <- Data %>% setNames(gsub("Acc", "Accelerometer", names(.)))
Data <- Data %>% setNames(gsub("Gyro", "Gyroscope", names(.)))
Data <- Data %>% setNames(gsub("^f", "FrequencyDomain", names(.)))
Data <- Data %>% setNames(gsub("Mag", "Magnitude", names(.))) %>% setNames(gsub("^t", "TimeDomain", names(.)))
Data <- Data %>% setNames(gsub("mean\\.\\.", "Mean", names(.))) %>% setNames(gsub("std\\.\\.", "Std", names(.)))
Data <- Data %>% setNames(gsub("\\.", "", names(.)))
Data <- Data %>% select(-starts_with("angle"))
#Summary
summary <- Data %>% group_by(SubjectID, ActivityName)
summary <- summary %>% summarize_each(funs(mean))
write.table(summary,file="summary-data.txt",row.name=FALSE)
print(summary)
