# Install and load packages
library(ggplot2)
library(cowplot)
library(dplyr) 
library(tidyr)
library(colorspace)

# Set directory
setwd('C:/Users/chwu6540/Dropbox (Personal)/JEB commentary') # on desktop

# Load dataset
raw_data  <- read.csv("JEB_data.csv")
str(raw_data)

# Summarise by year
year_sum <- raw_data %>% 
  dplyr::group_by(journal, year) %>% 
  dplyr::summarise(meta_analysis = sum(meta_analysis),
                   lit_review = sum(lit_review),
                   syst_review = sum(syst_review),
                   comp_review = sum(comp_review),
                   phylo_review = sum(phylo_review))

# Wide to long format
year_sum <- tidyr::gather(year_sum, review_type, count, meta_analysis:phylo_review, factor_key = TRUE)

# Order factor levels by highest number
year_sum$review_type <- reorder(year_sum$review_type, year_sum$count)
year_sum$review_type <- factor(year_sum$review_type, levels = rev(levels(year_sum$review_type)))

# Plot figure
# as percentage -> position = "fill", normal -> position = "stack"
ggplot(year_sum, aes(fill = review_type, y = count, x = year)) +
  geom_bar(position = "stack", stat = "identity") +
  colorspace::scale_fill_discrete_sequential(palette = "Viridis", rev = FALSE) +
  ylab("Number of papers") + xlab(NULL) +
  theme_classic() + theme(legend.position = "top") +
  facet_wrap(journal ~ ., ncol = 2, scales = "free")
