# Assignment 3

# done in base and dplyr packages

# import dataset
denguedata<-read.csv("C:/Users/tahja/Downloads/a3/dengue_assignment.csv")
# summarize data
summary(denguedata)
# check variable types
str(denguedata)
# check for missing data
sum(is.na(denguedata))
# Calculate total cases reported in 2014
sum(denguedata$case_number[denguedata$year==2014], na.rm = TRUE)
# result is 15747

# double check with dplyr
library(dplyr)
denguedata%>%filter(year==2014)%>%summarize(total_cases=sum(case_number,na.rm=TRUE))
# result is 15747
