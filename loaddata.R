library(XML)
library(dplyr)
library(readr)

filenames <- Sys.glob("*.xml")
data <- lapply(filenames, xmlToDataFrame, stringsAsFactors = FALSE)
data <- rbind_all(data)

write_csv(data, "libraries_davies.csv")
