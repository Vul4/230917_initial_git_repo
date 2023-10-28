#successful
library(maptools) #ok
library (sp) #ok
library(ggplot2) #ok
library(rnaturalearthdata) #ok
library(rgbif) #ok
library(mapr) #devtools::install_github("cran/mapr") #ok
library(leaflet) #ok

library(raster) #notok #no 'terra' #options(timeout = 600) >install.packages("raster")-> ok #package terra also ok
library(sf) #notok #download failed #options(timeout = 600) >install.packages("sf")-> ok
library(rnaturalearth) #notok #no 'sf' & 'terra' #options(timeout = 600) >install.packages("rnaturalearth")-> ok
library(ggspatial) #notok #no 'sf' #options(timeout = 600) >install.packages("ggspatial")-> ok
library(marmap) #notok #no terra #options(timeout = 600) >install.packages("marmap")-> ok

#unsuccessful
library(rgdal) #notok #configuration failed
library (GISTools) #devtools::install_github("cran/GISTools") #notok #no 'rgeos'



