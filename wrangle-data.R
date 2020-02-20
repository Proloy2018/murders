
library(tidyverse)
murders <- read_csv("data/murders.csv")
murders <- murders %>% dplyr::mutate( region =factor(region), rate = total/population*10^5)
save(murders, file = "rda/murders.rda") # suffix .RData and .rda same we prefer .rda 
View(murders)
