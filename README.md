#Getting And Cleaning Data - Project

## Credit

This repository represents summarization of a fitness dataset produced by the following:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Overview

This repository includes the following files:

* .gitignore: Git ignore file that will exclude the source data from being archived
* README.md: This file
* run_analysis.R: R script. By executing the script with an R interpreter, the source data files are loaded and parsed to produce a single summary output file.
* summary.txt: The summary output produced by the R script.

## Prerequisites

You must perform the following actions prior to executing the script: `run_analysis.R`.

1. Download the [source dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) to the root folder of the repository.
2. Unzip the downloaded dataset to a folder named `./Data`. Consequently, you will find folders such as: `./Data/test` and `./Data/train`.
3. Set the working directory to the root of this repository.

