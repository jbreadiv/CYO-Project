#Rscript for Capstone Report - CYO
# J.B. Read
# 01/05/2022
###

# Install packages 

if(!require(tidyverse)) install.packages("tidyverse", repos = "http://cran.us.r-project.org")
if(!require(caret)) install.packages("caret", repos = "http://cran.us.r-project.org")
if(!require(data.table)) install.packages("data.table", repos = "http://cran.us.r-project.org")
install.packages("RSocrata")

# Load packages in library

library(tidyverse)
library(caret)
library(data.table)
library(RSocrata)

# NYC Incidents Responded to by Fire Companies dataset:
# https://data.cityofnewyork.us/Public-Safety/Incidents-Responded-to-by-Fire-Companies/tm6d-hbzd
# https://data.cityofnewyork.us/Public-Safety/Incidents-Responded-to-by-Fire-Companies/tm6d-hbzd/OPEN_DATA_FIRE_INCIDENTS_FILE_DESCRIPTION.xls

# Creat a dataframe for the Fire Companies dataset using API:

FDNY <- read.socrata("https://data.cityofnewyork.us/resource/tm6d-hbzd.json")

glimpse(FDNY)
