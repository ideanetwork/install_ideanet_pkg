options(repos=structure(c(CRAN="http://cran.us.r-project.org")))# cran mirror to install packages if needed

if (!require(rlang)){
  install.packages("rlang")
  suppressPackageStartupMessages(library(rlang))
}
if (!require(pacman)){
  install.packages("pacman")
  suppressPackageStartupMessages(library(pacman))
}
if (!require(devtools)){
  install.packages("devtools")
  suppressPackageStartupMessages(library(devtools))
}

pacman::p_unlock() # remove 00lock if present

remotes::install_github("ideanetwork/ideanet", force = TRUE) 


 
