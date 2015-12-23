# DataScientistsToolbox_GettingAndCleaningData_Project
Data Scientist's Toolbox - Getting and Cleaning Data - Project

# Files included
* run_analysis.R : R script to run against the assignment's dataset which produces the tidy data (finalDataSet)
* README.md      : This file
* CodeBook.md    : Code book with explanation of analysis and variable descriptions

# Instructions
To run the analysis, download the data set (or uncomment the appropriate lines in the run_analysis.R script) into
your local directory for R Studio. Load the run_analysis.R file (should show up in the source window).  

Source the code and you'll end up with a variable named finalDataSet (data frame)
and the viewer should launch allowing you to explore the data frame.  

See the code book (CodeBook.md) for explanations
around the analysis and variable descriptions.

# Details
The script will load both data sets (training and test) from the local directory for R.  It combines both data sets, updates labels and variable names and then summarizes the data by subject id and activity across all variables from the original data set.  See code book for more detailed methodology.
