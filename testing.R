# install.packages("devtools")

# devtools::install_github("hiweller/colordistance")
library(colordistance)

setwd("~/colordistance_testing_hweller/")

# "I'm going to insult every sentient being in the whole universe. And I'm going
# to do it...in alphabetical order."

image_folder <- "./butterflyfish"
image_paths <- getImagePaths(image_folder)
image_single <- image_paths[7]

hist_single <- getImageHist(image_single, bins=c(8, 2, 2), binAvg = F, normPix = T)

# hist_single <- getImageHist(image_single, bins = c(8, 2, 2), binAvg = F, normPix = T, hsv = T)

