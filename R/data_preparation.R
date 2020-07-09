# Data preparation for the WORCShop

# The following is only necessary for installation of palmerpenguins
# I'm leaving it in because installation is from github, not CRAN
# remotes::install_github("allisonhorst/palmerpenguins") 

library(haven)
library(readr)
library(writexl)
library(palmerpenguins)

penguins <- palmerpenguins::penguins

# create directory
if(!dir.exists("data/")){
  dir.create("data/")
}

# save the data as spss, csv, and xlsx
write_sav(penguins, "data/penguins.sav")
write_csv(penguins, "data/penguins.csv")
write_xlsx(penguins, "data/penguins.xlsx")

# code to run with the data
read.csv("penguins.csv")

# inside the r markdown: `r nrow(data)`

plot(data[,"bill_length_mm"],data[,"bill_depth_mm"],
     xlab = "Bill length", ylab = "Bill depth")
