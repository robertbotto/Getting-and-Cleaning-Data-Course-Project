# read in all data
X0 <- read.table("./UCI HAR Dataset/train/X_train.txt")
X0 <- rbind(X0,read.table("./UCI HAR Dataset/test/X_test.txt"))
A <- read.table("./UCI HAR Dataset/train/y_train.txt")
A <- rbind(A,read.table("./UCI HAR Dataset/test/y_test.txt"))
Al <- read.table("./UCI HAR Dataset/activity_labels.txt")
S <- read.table("./UCI HAR Dataset/train/subject_train.txt", colClasses=c("factor"))
S <- rbind(S,read.table("./UCI HAR Dataset/test/subject_test.txt", colClasses=c("factor")))
V <- read.table("./UCI HAR Dataset/features.txt", colClasses=c("integer", "character"))

# subset data on means and stds
idx <- grep("mean\\(\\)|std\\(\\)", V$V2)
X <- X0[,idx]
remove(X0)

# name activiites
A$V1 <- as.factor(A$V1)
levels(A$V1) <- Al$V2
remove(Al)

# fix up the variable names
names(X) <- V[idx,2]
names(X) <- gsub("mean\\(\\)","Mean",names(X)) # camelcase Mean
names(X) <- gsub("std\\(\\)","Std",names(X)) # camelcase Std
names(X) <- gsub("\\-","",names(X)) # remove hyphens
names(X) <- gsub("^t","Time",names(X)) # more descriptive
names(X) <- gsub("^f","Freq",names(X)) # more descriptive
names(X) <- gsub("BodyBody","Body",names(X)) # seems like an error
names(A) <- c("Activity")
names(S) <- c("Subject")
remove(V,idx)

# add activity and subject to X
X <- cbind(S,A,X)
remove(S,A)

# aggregate
Xa <- ddply(X, .(Subject, Activity), numcolwise(mean), na.rm=TRUE)
write.table(Xa, "MeanPhoneDataBySubjectActivity.txt", row.name=FALSE) 

