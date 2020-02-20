getwd()
library(tidyverse)
library(dslabs)
url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv"
data_file <- "data/murders.csv"
download.file(url, destfile = data_file)
