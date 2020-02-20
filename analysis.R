
library(tidyverse)
load("data/murders.rda")
murders %>% dplyr::mutate (abb =reorder(x = abb, X = rate)) %>%
  ggplot2::ggplot(mapping = aes(x=abb, y=rate)) +
  geom_bar(width = 0.5, stat = "identity", color = "black") +
  coord_flip()
ggsave(filename = "figs/barplot.png", plot = last_plot(), dpi = 600)
