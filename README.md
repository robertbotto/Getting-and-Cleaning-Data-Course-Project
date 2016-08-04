### Instructions

Run the script `run_analysis.R` with the data from Samsung unzipped in your working directory.  Do not rename the data directory.

### Description

The scripts reads in the varibles, labels and metadata for both training and testing observations (and predictions).  It merges training and testing by rows and subject/activity by column.  

All variable names were cleaned up and striped of non-alpha characters.

Only variables related to means and standard deviations are selected. 

The data is then aggregaed up to means grouped by activity and subject id.

### Codebook

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals (prefix 'Time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAccXYZ and TimeGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccJerkXYZ and TimeBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccMag, TimeGravityAccMag, TimeBodyAccJerkMag, TimeBodyGyroMag, TimeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FreqBodyAcc-XYZ, FreqBodyAccJerk-XYZ, FreqBodyGyro-XYZ, FreqBodyAccJerkMag, FreqBodyGyroMag, FreqBodyGyroJerkMag. (Note the 'Freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- TimeBodyAccYZ
- TimeGravityAccXYZ
- TimeBodyAccJerkXYZ
- TimeBodyGyroXYZ
- TimeBodyGyroJerkXYZ
- TimeBodyAccMag
- TimeGravityAccMag
- TimeBodyAccJerkMag
- TimeBodyGyroMag
- TimeBodyGyroJerkMag
- FregBodyAccXYZ
- FregBodyAccJerkXYZ
- FregBodyGyroXYZ
- FregBodyAccMag
- FregBodyAccJerkMag
- FregBodyGyroMag
- FregBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- Mean: Mean value
- Std: Standard deviation