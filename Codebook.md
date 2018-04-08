## CodeBook
There is a total of 68 columns in this data set. Each row contains data related to 1 activity for a certain person.

There are data for 30 persons, each one was tracked for 6 activities, so there are a total of 180 rows of data.

Each row contains data for 66 variables, each one being the average of the raw data for the corresponding person/activity combination.

## The Data

Subject.Id - Number between 1 and 30 representing the person who has the data
Activity.Name - It can be one of these values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

The data was averaged based on subject and activity group.
Subject column is numbered sequentially from 1 to 30. Activity column has 6 types as listed below.

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

All the variables estimated for mean and standard deviation were kept.

## Variables

There are a lot of variables each one measuring one kind of data. They are all listed bellow.

You can identify their meaning by examining how each variable is named:

Variables starting with "FrequencyDomain" contains data after the Fast Fourier Transform.
Variables starting with "TimeDomain" contains raw data, before the Fast Fourier Transform.
Variables ending with "Mean" or "MeanX/Y/Z" contains the mean value of the data or for its axis.
Variables ending with "Std" or "StdX/Y/Z" contains the standard deviation of the data or for its axis.
The middle of the variable name contains what exactly is the data and its procedence, if it was taken from the accelerometer or from the gyroscope.
FrequencyDomainBodyAccelerometerJerkMeanX
FrequencyDomainBodyAccelerometerJerkMeanY
FrequencyDomainBodyAccelerometerJerkMeanZ
FrequencyDomainBodyAccelerometerJerkStdX
FrequencyDomainBodyAccelerometerJerkStdY
FrequencyDomainBodyAccelerometerJerkStdZ
FrequencyDomainBodyAccelerometerMagnitudeMean
FrequencyDomainBodyAccelerometerMagnitudeStd
FrequencyDomainBodyAccelerometerMeanX
FrequencyDomainBodyAccelerometerMeanY
FrequencyDomainBodyAccelerometerMeanZ
FrequencyDomainBodyAccelerometerStdX
FrequencyDomainBodyAccelerometerStdY
FrequencyDomainBodyAccelerometerStdZ
FrequencyDomainBodyBodyAccelerometerJerkMagnitudeMean
FrequencyDomainBodyBodyAccelerometerJerkMagnitudeStd
FrequencyDomainBodyBodyGyroscopeJerkMagnitudeMean
FrequencyDomainBodyBodyGyroscopeJerkMagnitudeStd
FrequencyDomainBodyBodyGyroscopeMagnitudeMean
FrequencyDomainBodyBodyGyroscopeMagnitudeStd
FrequencyDomainBodyGyroscopeMeanX
FrequencyDomainBodyGyroscopeMeanY
FrequencyDomainBodyGyroscopeMeanZ
FrequencyDomainBodyGyroscopeStdX
FrequencyDomainBodyGyroscopeStdY
FrequencyDomainBodyGyroscopeStdZ
TimeDomainBodyAccelerometerJerkMagnitudeMean
TimeDomainBodyAccelerometerJerkMagnitudeStd
TimeDomainBodyAccelerometerJerkMeanX
TimeDomainBodyAccelerometerJerkMeanY
TimeDomainBodyAccelerometerJerkMeanZ
TimeDomainBodyAccelerometerJerkStdX
TimeDomainBodyAccelerometerJerkStdY
TimeDomainBodyAccelerometerJerkStdZ
TimeDomainBodyAccelerometerMagnitudeMean
TimeDomainBodyAccelerometerMagnitudeStd
TimeDomainBodyAccelerometerMeanX
TimeDomainBodyAccelerometerMeanY
TimeDomainBodyAccelerometerMeanZ
TimeDomainBodyAccelerometerStdX
TimeDomainBodyAccelerometerStdY
TimeDomainBodyAccelerometerStdZ
TimeDomainBodyGyroscopeJerkMagnitudeMean
TimeDomainBodyGyroscopeJerkMagnitudeStd
TimeDomainBodyGyroscopeJerkMeanX
TimeDomainBodyGyroscopeJerkMeanY
TimeDomainBodyGyroscopeJerkMeanZ
TimeDomainBodyGyroscopeJerkStdX
TimeDomainBodyGyroscopeJerkStdY
TimeDomainBodyGyroscopeJerkStdZ
TimeDomainBodyGyroscopeMagnitudeMean
TimeDomainBodyGyroscopeMagnitudeStd
TimeDomainBodyGyroscopeMeanX
TimeDomainBodyGyroscopeMeanY
TimeDomainBodyGyroscopeMeanZ
TimeDomainBodyGyroscopeStdX
TimeDomainBodyGyroscopeStdY
TimeDomainBodyGyroscopeStdZ
TimeDomainGravityAccelerometerMagnitudeMean
TimeDomainGravityAccelerometerMagnitudeStd
TimeDomainGravityAccelerometerMeanX
TimeDomainGravityAccelerometerMeanY
TimeDomainGravityAccelerometerMeanZ
TimeDomainGravityAccelerometerStdX
TimeDomainGravityAccelerometerStdY
TimeDomainGravityAccelerometerStdZ

