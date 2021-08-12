# Codebook for Getting and Cleaning Data Course Project

## Data Modification
### The "run_analysis" code modifies the original dataset by merging the data into one data file, adds labels to variables, extracts the mean and standard deviation data for each variable, adds/modifies descriptive labels to data columns and activities, and creates a new dataset of the average of each variable for each activity and subject called "tidydata.txt".

## Variable Description
### Identifiers
#### "subject" - Subject ID
#### "activity" - Activity completed by subject 
##### Activity Labels:
###### WALKING - value 1 - subject was walking during test
###### WALKING_UPSTAIRS - value 2 - subject was walking up stairs during test
###### WALKING_DOWNSTAIRS - value 3 - subject was walking down stairs during test
###### SITTING - value 4 - subject was sitting during test
###### STANDING - value 5 - subject was standing during test
###### LAYING - value 6 - subject was laying down during test
### Measurements
####  [1] "timebodyaccelerometer-mean()-X" -                 
####  [2] "timebodyaccelerometer-mean()-Y"                
####  [3] "timebodyaccelerometer-mean()-Z"                
####  [4] "timebodyaccelerometer-std()-X"                 
####  [5] "timebodyaccelerometer-std()-Y"                 
####  [6] "timebodyaccelerometer-std()-Z"                 
####  [7] "timegravityaccelerometer-mean()-X"             
####  [8] "timegravityaccelerometer-mean()-Y"             
####  [9] "timegravityaccelerometer-mean()-Z"             
#### [10] "timegravityaccelerometer-std()-X"              
#### [11] "timegravityaccelerometer-std()-Y"              
#### [12] "timegravityaccelerometer-std()-Z"              
#### [13] "timebodyaccelerometerjerk-mean()-X"            
#### [14] "timebodyaccelerometerjerk-mean()-Y"            
#### [15] "timebodyaccelerometerjerk-mean()-Z"            
#### [16] "timebodyaccelerometerjerk-std()-X"             
#### [17] "timebodyaccelerometerjerk-std()-Y"             
#### [18] "timebodyaccelerometerjerk-std()-Z"             
#### [19] "timebodygyroscope-mean()-X"                    
#### [20] "timebodygyroscope-mean()-Y"                    
#### [21] "timebodygyroscope-mean()-Z"                    
#### [22] "timebodygyroscope-std()-X"                     
#### [23] "timebodygyroscope-std()-Y"                     
#### [24] "timebodygyroscope-std()-Z"                     
#### [25] "timebodygyroscopejerk-mean()-X"                
#### [26] "timebodygyroscopejerk-mean()-Y"                
#### [27] "timebodygyroscopejerk-mean()-Z"                
#### [28] "timebodygyroscopejerk-std()-X"                 
#### [29] "timebodygyroscopejerk-std()-Y"                 
#### [30] "timebodygyroscopejerk-std()-Z"                 
#### [31] "timebodyaccelerometermagnitude-mean()"         
#### [32] "timebodyaccelerometermagnitude-std()"          
#### [33] "timegravityaccelerometermagnitude-mean()"      
#### [34] "timegravityaccelerometermagnitude-std()"       
#### [35] "timebodyaccelerometerjerkmagnitude-mean()"     
#### [36] "timebodyaccelerometerjerkmagnitude-std()"      
#### [37] "timebodygyroscopemagnitude-mean()"             
#### [38] "timebodygyroscopemagnitude-std()"              
#### [39] "timebodygyroscopejerkmagnitude-mean()"         
#### [40] "timebodygyroscopejerkmagnitude-std()"          
#### [41] "frequencybodyaccelerometer-mean()-X"           
#### [42] "frequencybodyaccelerometer-mean()-Y"           
#### [43] "frequencybodyaccelerometer-mean()-Z"           
#### [44] "frequencybodyaccelerometer-std()-X"            
#### [45] "frequencybodyaccelerometer-std()-Y"            
#### [46] "frequencybodyaccelerometer-std()-Z"            
#### [47] "frequencybodyaccelerometerjerk-mean()-X"       
#### [48] "frequencybodyaccelerometerjerk-mean()-Y"       
#### [49] "frequencybodyaccelerometerjerk-mean()-Z"       
#### [50] "frequencybodyaccelerometerjerk-std()-X"        
#### [51] "frequencybodyaccelerometerjerk-std()-Y"        
#### [52] "frequencybodyaccelerometerjerk-std()-Z"        
#### [53] "frequencybodygyroscope-mean()-X"               
#### [54] "frequencybodygyroscope-mean()-Y"               
#### [55] "frequencybodygyroscope-mean()-Z"               
#### [56] "frequencybodygyroscope-std()-X"                
#### [57] "frequencybodygyroscope-std()-Y"                
#### [58] "frequencybodygyroscope-std()-Z"                
#### [59] "frequencybodyaccelerometermagnitude-mean()"    
#### [60] "frequencybodyaccelerometermagnitude-std()"     
#### [61] "frequencybodyaccelerometerjerkmagnitude-mean()"
#### [62] "frequencybodyaccelerometerjerkmagnitude-std()" 
#### [63] "frequencybodygyroscopemagnitude-mean()"        
#### [64] "frequencybodygyroscopemagnitude-std()"         
#### [65] "frequencybodygyroscopejerkmagnitude-mean()"    
#### [66] "frequencybodygyroscopejerkmagnitude-std()"  

