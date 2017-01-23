# Human Activity Recognition Using Smartphones Dataset (Summary)

## Overview

[Source Data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) were processed using a [short R script](https://github.com/tiggerntatie/datascience-cleaning) to produce the **summary.txt** data file.

Original Data are the work of the following:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Dataset Files

This data set consists of the following files:

* README.md: a description of how the dataset files are used/produced using the R script
* CodeBook.md: this file.
* summary.txt: The summarized data in text format.
* run_analysis.R: The R-language script
* .gitignore: git ignore file that will exclude the source data from archiving.

## Prerequisites

The data set is only reproducible with the aforementioned [Source Data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). Said data must be unzipped and placed in a folder named `./Data`. The source data is **not** included in this dataset.

## Data Description

Each row in the summary dataset consists of a summarized set of motion data observations for a single person (subject) engaged in a single activity (activity). All following fields represent mean values of the indicated parameter. See the source data README.txt for detailed descriptions of the fields. All ar normalized to a range of [-1:1] and have no units. 

The following data fields are present:

* subject: an integer ID that identifies a single human subject.
* activity: one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING
* tbodyacc_mean_x	
* tbodyacc_mean_y	
* tbodyacc_mean_z	
* tbodyacc_std_x	
* tbodyacc_std_y	
* tbodyacc_std_z	
* tgravityacc_mean_x	
* tgravityacc_mean_y	
* tgravityacc_mean_z	
* tgravityacc_std_x	
* tgravityacc_std_y	
* tgravityacc_std_z	
* tbodyaccjerk_mean_x	
* tbodyaccjerk_mean_y	
* tbodyaccjerk_mean_z	
* tbodyaccjerk_std_x	
* tbodyaccjerk_std_y	
* tbodyaccjerk_std_z	
* tbodygyro_mean_x	
* tbodygyro_mean_y	
* tbodygyro_mean_z	
* tbodygyro_std_x	
* tbodygyro_std_y	
* tbodygyro_std_z	
* tbodygyrojerk_mean_x	
* tbodygyrojerk_mean_y	
* tbodygyrojerk_mean_z	
* tbodygyrojerk_std_x	
* tbodygyrojerk_std_y	
* tbodygyrojerk_std_z	
* tbodyaccmag_mean	
* tbodyaccmag_std	
* tgravityaccmag_mean	
* tgravityaccmag_std	
* tbodyaccjerkmag_mean	
* tbodyaccjerkmag_std	
* tbodygyromag_mean	
* tbodygyromag_std	
* tbodygyrojerkmag_mean	
* tbodygyrojerkmag_std	
* fbodyacc_mean_x	
* fbodyacc_mean_y	
* fbodyacc_mean_z	
* fbodyacc_std_x	
* fbodyacc_std_y	
* fbodyacc_std_z	
* fbodyaccjerk_mean_x	
* fbodyaccjerk_mean_y	
* fbodyaccjerk_mean_z	
* fbodyaccjerk_std_x	
* fbodyaccjerk_std_y	
* fbodyaccjerk_std_z	
* fbodygyro_mean_x	
* fbodygyro_mean_y	
* fbodygyro_mean_z	
* fbodygyro_std_x	
* fbodygyro_std_y	
* fbodygyro_std_z	
* fbodyaccmag_mean	
* fbodyaccmag_std	
* fbodybodyaccjerkmag_mean	
* fbodybodyaccjerkmag_std	
* fbodybodygyromag_mean	
* fbodybodygyromag_std	
* fbodybodygyrojerkmag_mean	
* fbodybodygyrojerkmag_std

