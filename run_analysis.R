# run_analysis.R
# by E Dennison Jan 22, 2017
#
# Process data from:
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# According to requirements:
# https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project
#
# There are six pertinent source data files:
# subject_[train|test].txt : lists subject ID for each data vector
# X_[train|test].txt : lists all data vectors
# y_[train|test].txt : lists activity ID for each data vector
# 
# We wish to extract only mean and std values from the vectors
# ./Data/features.txt lists feature names from the vector, we want those with
# text 'std' and 'mean' only
# Activity names are listed in ./Data/activity_labels.txt

library(dplyr)

# Function: process_vector_file 
# 
# Accept:
# 1. The path to a vector data files (e.g. "./Data") (path)
# 2. Name of data set (e.g. "train") (name)
# 2. Vector of column numbers to filter (colnums)
# 3. Vector of column names to use (colnames)
# 4. Vector of activity names (activities)
# Process:
# 1. Filter vectors to only show mean and std values
# 2. Merge with subject IDs
# 3. Merge with activities
# 4. Convert activity IDs to names
# Return:
# Filtered data frame with given column names
process_vector_file <- function(path, name, colnums, colnames, activities) {
  # load the vectors
  x_data <- read.table(file.path(path, name, 
                                 paste("X_", name, ".txt", sep=""))) %>% 
    subset(select=colnums) 
  # throw in the column names
  colnames(x_data) <- colnames
  # load the activity data
  y_data <- read.table(file.path(path, name, 
                                 paste("y_", name, ".txt", sep="")))
  # give the column a good name
  colnames(y_data) <- c('activity')
  # convert to activity descriptions
  y_data$activity <- factor(y_data$activity, c('1','2','3','4','5','6'), labels=activities)
  # levels(y_data$activity) <- activities
  # load the subject data
  subject_data <- read.table(file.path(path, name, 
                                       paste("subject_", name, ".txt", sep="")))
  # give the column a good name
  colnames(subject_data) <- c('subject')
  # merge all together!
  cbind(subject_data, y_data, x_data)
}

### Script Begins

# Gather the activity names -> activities
activities <- as.vector(read.table("./Data/activity_labels.txt")$V2)

# Gather the table of all feature names (feature_names) and numbers (feature_numbers)
features <- read.table("./Data/features.txt")
# ...and filter it to retrieve only those referencing mean or std
# Which are we interested in? The ones with std and mean
feature_search <- "^.*(mean|std)\\(\\)(-[XYZ])?"
# Extract the column numbers
feature_numbers <- grep(feature_search, features$V2)
# Extract those column names and clean out (), hyphens and upper case characters
feature_names <- as.vector(features[grep(feature_search, features$V2), 2])
feature_names <- tolower(sub("\\(\\)","",feature_names))
feature_names <- gsub("-","_", feature_names)

# Process all of the vector data from the training and test sets:
train_data <- process_vector_file("./Data", "train", feature_numbers, feature_names, activities)
test_data <- process_vector_file("./Data", "test", feature_numbers, feature_names, activities)
# And place them in a single set
all_data <- merge(train_data, test_data, all=TRUE)

# Summarize the results: mean values for all subject/activity combinations
summary_data <- all_data %>% group_by(subject, activity) %>% summarise_each(funs(mean))

# Dump to CSV:
write.csv(summary_data, "summary.csv")

