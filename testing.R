# install.packages("devtools")

# devtools::install_github("hiweller/colordistance")
library(colordistance)

# setwd("~/colordistance_testing_hweller/")

setwd("~/Dropbox/Westneat_Lab/ColoR/")

# "I'm going to insult every sentient being in the whole universe. And I'm going
# to do it...in alphabetical order."

image_folder <- "./butterflyfish"
image_paths <- getImagePaths(image_folder)
image_single <- image_paths[7]

hist_single <- getImageHist(image_single, bins=c(8, 2, 2), binAvg = F, normPix = T, hsv=T, as.vec = T)

hist_list <- getHistList(image_folder, bins=3)

kmeans_single <- getKMeanColors(image_single, n=20)

kmeans_list <- getKMeansList(image_folder, bins=20, plotting=T, imgType = F, sampleSize = 10000)
kmeans_list01 <- extractClusters(kmeans_list)
kmeans_list02 <- extractClusters(kmeans_list, ordering=F, normalize = T)


CDM_hist <- getColorDistanceMatrix(hist_list)
CDM_hist <- getColorDistanceMatrix(clusterList=kmeans_list02, method="emd", ordering=F, plotting = T)

heatmapColorDistance(hist_list)

loaded_image <- loadImage(image_single, hsv=F)

colordistance::plotClusters(hist_list)
