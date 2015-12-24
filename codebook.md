<Header>Code Book, Getting and Cleaning Data Project (Data Science)</Header>


# Methodology
For the final data set that comprises “tidy data”, only the fields, from the raw data, containing mean() or std() were used in the final calculation and other raw fields which contained Mean were not used based on the original descriptions of the raw data labels.

All raw data variable and label names were converted to lower case (as advised from lectures) and all extraneous characters such as brackets, underlines, etc... were removed (and concatenating the remaining values)

Further detailed explanations of variable names and units of measure(derived from the raw data set) may be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

Training and test data sets were combined by binding the subject ids and activity levels (seperate files) with the corresponding data,

Activity levels were replaced (via a merge) with their corresponding names.

The final data set was comprised of only variables that measured the mean value or the standard deviation by taking the average (mean) value of each variable grouped by subject and activity.

There is only one value measured per field/column for a given subject and activity making this a tidy data set.

# Analysis Details
The analysis is performed with the run_analysis.R script using the R programming language (see inline comments for how this script works)

# Data Dictionary
##  subjected
* Description: Id of the subject for which the observation and measurements   were taken
* Units Integer
* Field Length 1
* Range 1-30

##  activity
* Description: Activity subject performed for measurements taken.
* Units: Categorical (character)
* Field Length: 6-17 characters
* Range
   laying
   sitting
   standing
   walking
   walkingdownstairs (walking down stairs)
   walkingupstairs (waling up stairs)

##  averagetimedomainsignalbodyaccmeanvaluex
* Description: average time domain signal for body acceleration of mean value along the x axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodyaccmeanvaluey
* Description: average time domain signal for body acceleration of mean value along the y axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodyaccmeanvaluez
* Description: average time domain signal for body acceleration of mean value along the z axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodyaccstandarddeviationx
* Description: average time domain signal for body acceleration standard deviation along the x axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodyaccstandarddeviationy
* Description: average time domain signal for body acceleration standard deviation along the y axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodyaccstandarddeviationz
* Description: : average time domain signal for body acceleration standard deviation along the z axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalgravityaccmeanvaluex
* Description: average time domain signal for gravity acceleration mean value along the x axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalgravityaccmeanvaluey
* Description: average time domain signal for gravity acceleration mean value along the y axis

* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalgravityaccmeanvaluez
* Description: average time domain signal for gravity acceleration mean value along the z axis

* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalgravityaccstandarddeviationx
* Description: average time domain signal for gravity acceleration standard deviation along the x axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalgravityaccstandarddeviationy
* Description: average time domain signal for gravity acceleration standard deviation along the y axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalgravityaccstandarddeviationz
* Description: average time domain signal for gravity acceleration standard deviation along the z axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodyaccjerkmeanvaluex
* Description: average time domain signal for body acceleration jerk mean value along the x axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodyaccjerkmeanvaluey
* Description: average time domain signal for body acceleration jerk mean value along the y axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodyaccjerkmeanvaluez
* Description: average time domain signal for body acceleration jerk mean value along the z axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodyaccjerkstandarddeviationx
* Description: average time domain signal for body acceleration jerk standard deviation value along the x axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodyaccjerkstandarddeviationy
* Description: average time domain signal for body acceleration jerk standard deviation value along the y axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodyaccjerkstandarddeviationz
* Description: average time domain signal for body acceleration jerk standard deviation value along the z axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyromeanvaluex
* Description: average time domain signal for body gyro mean value along the x axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyromeanvaluey
* Description: average time domain signal for body gyro mean value along the y axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyromeanvaluez
* Description: average time domain signal for body gyro mean value along the z axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyrostandarddeviationx
* Description: average time domain signal for body gyro standard deviation along the x axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyrostandarddeviationy
* Description: average time domain signal for body gyro standard deviation along the y axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyrostandarddeviationz
* Description: average time domain signal for body gyro standard deviation along the z axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyrojerkmeanvaluex
* Description: average time domain signal for body gyro jerk mean value along the x axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyrojerkmeanvaluey
* Description: average time domain signal for body gyro jerk mean value along the y axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyrojerkmeanvaluez
* Description: average time domain signal for body gyro jerk mean value along the z axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyrojerkstandarddeviationx
* Description: average time domain signal for body gyro jerk standard deviation along the x axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyrojerkstandarddeviationy
* Description: average time domain signal for body gyro jerk standard deviation along the y axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyrojerkstandarddeviationz
* Description: average time domain signal for body gyro jerk standard deviation along the z axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodyaccmagmeanvalue
* Description: average time domain signal for body acceleration magnitude mean value
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodyaccmagstandarddeviation
* Description: average time domain signal for body accleration magnitude standard deviation
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalgravityaccmagmeanvalue
* Description: average time domain signal for gravity accleration magnitude mean value
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalgravityaccmagstandarddeviation
* Description: average time domain signal for gravity acceleration magnitude standard devaition
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodyaccjerkmagmeanvalue
* Description: average time domain signal for body accerlation jerk magnitude mean value
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodyaccjerkmagstandarddeviation
* Description: average time domain signal for body acceralation jerk magnitude standard deviation
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyromagmeanvalue
* Description: average time domain signal for body gyro mangnitude mean value
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyromagstandarddeviation
* Description: average time domain signal for body gyro mangnitude standard deviation
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyrojerkmagmeanvalue
* Description: average time domain signal for body gyro jerk magnitude mean value
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagetimedomainsignalbodygyrojerkmagstandarddeviation
* Description: average time domain signal for body gyro jerk magnitude standard deviation
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodyaccmeanvaluex
* Description: average frequency signal (fast fourier transform) for body accerlation mean value along x axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodyaccmeanvaluey
* Description: average frequency signal (fast fourier transform) for body accerlation mean value along y axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodyaccmeanvaluez
* Description: average frequency signal (fast fourier transform) for body accerlation mean value along z axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodyaccstandarddeviationx
* Description: average frequency signal (fast fourier transform) for body accerlation standard deviation along x axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodyaccstandarddeviationy
* Description: average frequency signal (fast fourier transform) for body accerlation standard deviation along y axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodyaccstandarddeviationz
* Description: average frequency signal (fast fourier transform) for body acceralation standard deviation along z axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodyaccjerkmeanvaluex
* Description: average frequency signal (fast fourier transform) for body accerlation jerk mean value along x axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodyaccjerkmeanvaluey
* Description: average frequency signal (fast fourier transform) for body accerlation jerk mean value along y axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodyaccjerkmeanvaluez
* Description: average frequency signal (fast fourier transform) for body accerlation jerk mean value along z axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodyaccjerkstandarddeviationx
* Description: average frequency signal (fast fourier transform) for body accerlation jerk standard deviation along x axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodyaccjerkstandarddeviationy
* Description: average frequency signal (fast fourier transform) for body accerlation jerk standard deviation along y axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodyaccjerkstandarddeviationz
* Description: average frequency signal (fast fourier transform) for body accerlation jerk standard deviation along z axis
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodygyromeanvaluex
* Description: average frequency signal (fast fourier transform) for body gyro mean value along the x axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodygyromeanvaluey
* Description: average frequency signal (fast fourier transform) for body gyro mean value along the y axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodygyromeanvaluez
* Description: average frequency signal (fast fourier transform) for body gyro mean value along the z axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodygyrostandarddeviationx
* Description: average frequency signal (fast fourier transform) for body gyro standard deviation along the x axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodygyrostandarddeviationy
* Description: average frequency signal (fast fourier transform) for body gyro standard deviation along the y axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodygyrostandarddeviationz
* Description: average frequency signal (fast fourier transform) for body gyro standard deviation along the z axis
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodyaccmagmeanvalue
* Description: average frequency signal (fast fourier transform) for body acceleration magnitude mean value
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodyaccmagstandarddeviation
* Description: average frequency signal (fast fourier transform) for body accerlation magnitude standard deviation
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodybodyaccjerkmagmeanvalue
* Description: average frequency signal (fast fourier transform) for body acceraltion jerk magnitude mean value
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodybodyaccjerkmagstandarddeviation
* Description: average frequency signal (fast fourier transform) for body accerlation jerk magnitude standard deviation
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodybodygyromagmeanvalue
* Description: average frequency signal (fast fourier transform) for body gyro magnitude mean value
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodybodygyromagstandarddeviation
* Description: average frequency signal (fast fourier transform) for body gyro magnitude standard deviation
* Units: gravities (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodybodygyrojerkmagmeanvalue
* Description: average frequency signal (fast fourier transform) for body gyro jerk magnitude mean value
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999

##  averagefastfouriertransformbodybodygyrojerkmagstandarddeviation
* Description: average frequency signal (fast fourier transform) for body gyro jerk magnitude standard deviation
* Units: seconds (numeric)
* Field Length: 12
* Range: -0.999999999 - 0.9999999999
