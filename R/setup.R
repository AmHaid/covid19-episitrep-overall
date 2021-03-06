
rm(list=ls())


# Load packages -----
library(here)
library(magrittr)
library(dplyr)
library(tidyr)
library(forcats)
library(janitor)
library(ISOweek)
library(growthrates)
library(glue)
library(ggplot2)
library(scales)
library(gridExtra)
library(ggpubr)
library(grid)
library(forecast)
library(sandwich)
library(rgeos)
library(sf)
library(countrycode)
library(officer)
library(gt)
library(webshot)
library(knitr)
library(flextable)
library(distill)
library(english)
library(readxl)
library(ggthemes)

# Create project paths -----
path.root  <- here::here()
path.R     <- file.path(path.root,'R')
path.Rmd   <- file.path(path.root,'Rmd')
path.templates <- file.path(path.root,'templates')
path.local <- file.path(path.root,'local')
path.data  <- file.path(path.local,'data')

# Create local folder or all types of outputs -----
dir.create(path.local, showWarnings = FALSE, recursive = TRUE)
dir.create(path.data, showWarnings = FALSE, recursive = TRUE)


# Create the path to NCovEpi Sharepoint
OS <- Sys.info()[['sysname']]

sharepoint.parent.dir <- dplyr::case_when(
  OS == "Windows" ~ "D:", 
  OS == "Darwin" ~ "~")

path.sharepoint <- file.path(sharepoint.parent.dir, 'MSF', 'GRP-EPI-COVID-19 - NCoVEpi')
