## Mike Colbert
# 11/07/2023
# Used to vertically and horizontally integrate the scraped CSV files from IMDB

rm(list = ls())

# load libraries


# load CSV files and use UTF-8 encoding
# perform horizontal integration based on imdb_url field
imdb_1970_list <- read.csv("imdb_1970_list.csv", sep=",", encoding="UTF-8")
imdb_1970_details <- read.csv("imdb_1970_details.csv", sep=",", encoding="UTF-8")
imdb_1970 <- merge(imdb_1970_list, imdb_1970_details, by="imdb_url")

imdb_1980_list <- read.csv("imdb_1980_list.csv", sep=",", encoding="UTF-8")
imdb_1980_details <- read.csv("imdb_1980_details.csv", sep=",", encoding="UTF-8")
imdb_1980 <- merge(imdb_1980_list, imdb_1980_details, by="imdb_url")

imdb_1990_list <- read.csv("imdb_1990_list.csv", sep=",", encoding="UTF-8")
imdb_1990_details <- read.csv("imdb_1990_details.csv", sep=",", encoding="UTF-8")
imdb_1990 <- merge(imdb_1990_list, imdb_1990_details, by="imdb_url")

imdb_2000_list <- read.csv("imdb_2000_list.csv", sep=",", encoding="UTF-8")
imdb_2000_details <- read.csv("imdb_2000_details.csv", sep=",", encoding="UTF-8")
imdb_2000 <- merge(imdb_2000_list, imdb_2000_details, by="imdb_url")

imdb_2005_list <- read.csv("imdb_2005_list.csv", sep=",", encoding="UTF-8")
imdb_2005_details <- read.csv("imdb_2005_details.csv", sep=",", encoding="UTF-8")
imdb_2005 <- merge(imdb_2005_list, imdb_2005_details, by="imdb_url")

imdb_2009_list <- read.csv("imdb_2009_list.csv", sep=",", encoding="UTF-8")
imdb_2009_details <- read.csv("imdb_2009_details.csv", sep=",", encoding="UTF-8")
imdb_2009 <- merge(imdb_2009_list, imdb_2009_details, by="imdb_url")

imdb_2012_list <- read.csv("imdb_2012_list.csv", sep=",", encoding="UTF-8")
imdb_2012_details <- read.csv("imdb_2012_details.csv", sep=",", encoding="UTF-8")
imdb_2012 <- merge(imdb_2012_list, imdb_2012_details, by="imdb_url")

imdb_2015_list <- read.csv("imdb_2015_list.csv", sep=",", encoding="UTF-8")
imdb_2015_details <- read.csv("imdb_2015_details.csv", sep=",", encoding="UTF-8")
imdb_2015 <- merge(imdb_2015_list, imdb_2015_details, by="imdb_url")

imdb_2017_list <- read.csv("imdb_2017_list.csv", sep=",", encoding="UTF-8")
imdb_2017_details <- read.csv("imdb_2017_details.csv", sep=",", encoding="UTF-8")
imdb_2017 <- merge(imdb_2017_list, imdb_2017_details, by="imdb_url")

imdb_2019_list <- read.csv("imdb_2019_list.csv", sep=",", encoding="UTF-8")
imdb_2019_details <- read.csv("imdb_2019_details.csv", sep=",", encoding="UTF-8")
imdb_2019 <- merge(imdb_2019_list, imdb_2019_details, by="imdb_url")

imdb_2021_list <- read.csv("imdb_2021_list.csv", sep=",", encoding="UTF-8")
imdb_2021_details <- read.csv("imdb_2021_details.csv", sep=",", encoding="UTF-8")
imdb_2021 <- merge(imdb_2021_list, imdb_2021_details, by="imdb_url")

imdb_2023_list <- read.csv("imdb_2023_list.csv", sep=",", encoding="UTF-8")
imdb_2023_details <- read.csv("imdb_2023_details.csv", sep=",", encoding="UTF-8")
imdb_2023 <- merge(imdb_2023_list, imdb_2023_details, by="imdb_url")


#perform vertical integration
imdb_movies <- rbind(imdb_1970, imdb_1980, imdb_1990, 
                     imdb_2000, imdb_2005, imdb_2009, 
                     imdb_2012, imdb_2015, imdb_2017, 
                     imdb_2019, imdb_2021, imdb_2023)



write.csv(imdb_movies, "all_imdb_movies.csv", fileEncoding="UTF-8", row.names=FALSE)


