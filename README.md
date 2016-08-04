### Instructions

Run the script `run_analysis.R` with the data from Samsung unzipped in your working directory.  Do not rename the data directory.

### Description

The scripts reads in the varibles, labels and metadata for both training and testing observations (and predictions).  It merges training and testing by rows and subject/activity by column.  

All variable names were cleaned up and striped of non-alpha characters.

Only variables related to means and standard deviations are selected. 

The data is then aggregaed up to means grouped by activity and subject id.

### Codebook

see `codebook.txt`