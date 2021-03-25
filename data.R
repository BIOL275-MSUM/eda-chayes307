
# Load packages -----------------------------------------------------------

library(tidyverse)
library(readr)


# Read data ---------------------------------------------------------------

X2019_2020 <- read_csv("data/2019-2020.csv", skip = 1,)
View(X2019_2020)
X2020_2021 <- read_csv("data/2020-2021.csv", 
                       skip = 1)
X2018_2019 <- read_csv("data/2018-2019.csv", 
                       skip = 1)
View(X2020_2021)

wili <- 
  bind_rows(
    X2018_2019, 
    X2019_2020, 
    X2020_2021) %>% 
filter(
  !(YEAR == 2018 ), 
  !(YEAR == 2019 & WEEK < 12),
  !(YEAR == 2020 & WEEK >= 8 & WEEK < 12)
) %>% 
  transmute(
    year = YEAR,
    week = WEEK,
    treatment = ifelse(YEAR == 2019 | YEAR == 2020 & WEEK < 12, 
                       "Not COVID", "COVID"), 
    wili =  `% WEIGHTED ILI`
  )

# CReate a time series (ggplot) for each input, very important





