#Test cleanup.R

library(data.table)

source(cleanup.R)

testData$ID <- seq.int(101, length.out=10)
testData$Gender <- c(rep('M','F', length.out=10))
testData$Pay <- c(sample(100, 10, replace = FALSE))

testData <- data.table(testData)

cleanedUp <- cleanup(testData, list(testData$ID, testData$Gender))

cleanedUp