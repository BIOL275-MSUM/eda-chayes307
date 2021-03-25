Infection rates of COVID-19 vs Influenza A and B
================
Connor Hayes
2021-03-02

# Our overall goal is to discuss the differences of Influenza infections between last year where we saw no adverse events and this year where we saw COVID-19 occur.

# Abstract: With the overall destruction of COVID-19 and the symptoms of the upper respiratory system, another key disease during this time of year is influenza A and B. Both of these diseases are highly spreadable between person-to-person contact, coughing, and touching similar objects. The overall question is to see if there is a difference in trends of infection between influenza A and B compared to COVID-19. We will be using data from the Center of Disease Control and John Hopkins University in order to make these key comparisons between the two factors. With the data that we do have, we will be doing an exploratory analysis to truly understand if there is a diminishing trend in the number of infections of influenza while the COVID-19 numbers went up over time. With these expected results we can determine the plan of action not only to be prepared for flu season next year, but to see how diseases play a role in our society.

# Methods

# We are displaying our data and our presentation by using R studio and R, the current versions that we are using is R version 4.0.3 (R Core Team 2020), and for R studio we are using R.Studio 1.4.1103 (RStudio Team 2021)

# Data aquisition- we determined the data that we aquired largely based on the CDC data. This is because it is a trustworthy source for national data of specific disease statistics, from there we had to get on the national influenza database and we had to determine the two years that we are looking for, 2019 our non COVID year and 2020-2021 for our data. From there we get our excel file and determine what weeks we need to do. (Centers for Disease Control and Prevention 2020)

# Data preperaption - We had to read in our data originally from excel files and had to upload it into R Studio, we did this by doing read csv. input in R, this was done under the dplyr package (Wickham and Hester 2020).

# When we get our data sets, what we see is that we have a large number of unnessacary information within our tables, so we have to split it up, I took off the weeks that do not correlate due to the fact that 2019 has completed a full year of data, and 2021 has not completed, therefore we had to have both of the weeks correlate in both years, specifically we are looking at week 40 of the last cumulitave year all the way to week seven of that current year. By using the filter function in the dplyr package (Hadley et al. 2020) we were able to do the necessary actions in order to take out our unnecesary weeks.

# What we also did was transmute our data, doing this gave us the ability to change the names of the original data, as well as section off the information that we need, and delete all of the unnecessary information that we get from our original charts. Transmute was performed by using the dplyr package once again (Wickham et al. 2020).

# Liturature cited:

# R Core Team (2020). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL <https://www.R-project.org/>.

# RStudio Team (2021). RStudio: Integrated Development Environment for R. RStudio, PBC, Boston, MA URL <http://www.rstudio.com/>.

# Hadley Wickham and Jim Hester (2020). readr: Read Rectangular Text Data. R package version 1.4.0.

# Hadley Wickham, Romain François, Lionel Henry and Kirill Müller (2020). dplyr: A Grammar of Data Manipulation. R package version 1.0.2. <https://CRAN.R-project.org/package=dplyr>

# Centers for Disease Control and Prevention. Influenza (Flu) weekly U.S. influenza surveillance report (FluView) \[updated February 7, 2020\]. Available at:<https://www.cdc.gov/flu/weekly/index.htm>. Accessed May 17, 2020.
