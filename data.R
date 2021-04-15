# Load packages -----------------------------------------------------------

library(tidyverse)
library(readr)
library(lubridate)

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
   date =  as_date(paste0(year, "-01-01")) + weeks(week),
    treatment = ifelse(YEAR == 2019 | YEAR == 2020 & WEEK < 12, 
                       "Not COVID", "COVID"), 
    wili =  `% WEIGHTED ILI`
   ) %>%
  group_by(treatment) %>% 
  mutate(x =  1:n())

# graph -------------------------------------------------------------------

ggplot(data = wili) +

geom_bar(mapping = aes(x = treatment))

ggplot(data = wili) +
  geom_bar(mapping = aes(x = treatment), fill = "#C5351B") +
  labs(x = "treatment", y = "wili (number of people)")

ggplot(data = wili) +
  geom_line(mapping = aes(x = date, y = wili, color = treatment))

ggplot(data = wili) +
  geom_line(mapping = aes(x = x, y = wili, color = treatment)) +
  scale_y_continuous(breaks = seq(from=-1,by=10,length.out=6))
                     

