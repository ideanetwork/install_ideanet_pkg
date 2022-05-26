options(repos=structure(c(CRAN="http://cran.us.r-project.org")))# cran mirror to install packages if needed

if (!require(pacman)){
  install.packages("pacman")
  suppressPackageStartupMessages(library(pacman))
}
pacman::p_unlock() # remove 00lock if present

Ideanet::ideanet() # run the application.
