# Install and load packages
library(ggplot2)
library(cowplot)
library(dplyr) 
library(tidyr)
library(colorspace)
library(ggbreak)

# Set directory
setwd('C:/Users/nicho/Dropbox (Personal)/JEB commentary') # on desktop

# Load dataset
raw_data    <- read.csv("JEB_data.csv")
noble_data  <- read.csv("Noble_articles.csv")

# Summarise by year
noble_data_clean <- noble_data %>%
  dplyr::filter(is.na(Exclude)) %>% # removed excluded papers
  dplyr::filter(!is.na(year)) %>% # remove empty rows
  dplyr::filter(!journal %in% c("Conservation Physiology", 
                                "Journal of Experimental Biology", 
                                "Integrative and Comparative Biology", 
                                "Physiological and Biochemical Zoology")) %>% # exclude physiology-specific journals
  droplevels() %>% # drop unused levels 
  dplyr::group_by(year) %>% # group by year
  dplyr::summarise(count = n()) 

year_sum <- raw_data %>% 
  dplyr::filter(year != "2021") %>%
  dplyr::group_by(year) %>% 
  dplyr::summarise(meta_analysis = sum(meta_analysis),
                   quali_sum     = sum(lit_review) + sum(syst_review),
                   quant_sum     = sum(comp_review) + sum(phylo_review))

ggplot() +
  geom_line(data = year_sum, aes(x = year, y = meta_analysis), size = 1, colour = "#704D9E") +
  geom_line(data = noble_data_clean, aes(x = year, y = count), size = 1, colour = "#ED7C97") +
  geom_line(data = year_sum, aes(x = year, y = quant_sum), size = 1, linetype = "dashed", colour = "#F9B282") +
  geom_line(data = year_sum, aes(x = year, y = quali_sum), size = 1, linetype = "dashed", colour = "grey") +
  geom_point(data = year_sum, aes(x = year, y = meta_analysis), size = 3, colour = "#704D9E") +
  geom_point(data = noble_data_clean, aes(x = year, y = count), size = 3, colour = "#ED7C97") +
  geom_point(data = year_sum, aes(x = year, y = quant_sum), size = 3, shape = 17, colour = "#F9B282") +
  geom_point(data = year_sum, aes(x = year, y = quali_sum), size = 3, shape = 15, colour = "grey") +
  geom_text(data = filter(year_sum, row_number() == n()), aes(x = year + 0.1, y = meta_analysis), hjust = 0, 
  label = "Quantitative - Meta-analyses from
  specialist journals", size = 3) +
  geom_text(data = filter(year_sum, row_number() == n()), aes(x = year + 0.1, y = quant_sum), hjust = 0, 
  label = "Quantitative - Comparative analyses
  from specialist journals", size = 3) +
  geom_text(data = filter(noble_data_clean, row_number() == n()), aes(x = year + 0.1, y = count), hjust = 0, 
  label = "Quantitative - Meta-analyses from
  non-specialist journals
  (n = 13)", size = 3) +
  geom_text(data = filter(year_sum, row_number() == n()), aes(x = year + 0.1, y = quali_sum), hjust = 0, 
  label = "Qualitative - Reviews
  from specialist journals", size = 3) +
  ylab("Number of papers") + xlab(NULL) +
  xlim(2014, 2022.5) +
  ggbreak::scale_y_break(c(35, 180)) +
  scale_y_sqrt() +
  theme_classic()
