# Installing the package
if(!require("dplyr")) install.packages("dplyr", repos='http://cran.us.r-project.org')
if(!require("jsonlite")) install.packages("jsonlite", repos='http://cran.us.r-project.org')
  
# Loading package
library(dplyr)
library(jsonlite)  

print(mtcars)

cat(summary(mtcars), "\n")

args <- commandArgs(trailingOnly = TRUE)
cat(args[1], "\n")
cat(args[2], "\n")

data=read.csv("scripts/business_data_temp.csv",header=T)

cat(class(data))
print(data["Period"])

cat("[json]", toJSON(data["Period"]), "\n")

message <- c()
message <- append(message, "hello")
message <- append(message, "world")
message <- append(message, "bye")

returnData <- list(
    statusCode="200",
    printMessage=message,
    imageBinary="fajklsdjfkljsdlkjfklsdjf"
)

# print(returnData["printMessage"])

cat("[result]", toJSON(returnData), "\n")
