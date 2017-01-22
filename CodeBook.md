### Human Activity Recognition Using Smartphones Dataset (Summary)

## Overview

[Source Data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) were processed using a [short R script](https://github.com/tiggerntatie/datascience-cleaning) to produce the **summary.csv** data file.

Original Data are the work of the following:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Dataset Files

This data set consists of the following files:

* README.md: a description of how the dataset files are used/produced using the R script
* CodeBook.md: this file.
* summary.csv: The summarized data in comma separated value format.
* run_analysis.R: The R-language script
* .gitignore: git ignore file that will exclude the source data from archiving.

## Prerequisites

The data set is only reproducible with the aforementioned [Source Data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). Said data must be unzipped and placed in a folder named `./Data`. The source data is **not** included in this dataset.

## Data Description

Each row in the summary dataset consists of a summarized set of motion data observations for a single person (subject) engaged in a single activity (activity). The following data fields are present:

* subject: an integer ID that identifies a single human subject.
* activity: one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING
*
