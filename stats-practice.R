#loading libraries 

library(GGally)
library(skimr)
library(palmerpenguins)
library(tidyverse)

#looking at data 
view(penguins)

#looking at columns 
names(penguins)


#checking the dimensions 
dim(penguins)

#get a summary of data set, gives you min,max, 1st + 3rd quartiles, median, mean of all variables
summary(penguins)

#get a summary with skimr
skimr::skim(penguins)

#print the first 6 rows 
head(penguins)

#print the last 6 rows
tail(penguins)

#make a pairplot

GGally :: ggpairs(penguins)

#make a pairsplot with a select number of columns and color by species --

GGally::ggpairs(penguins, columns = 3:6, ggplot2::aes(colour = species))

#make a histogram of penguin flipper lengths
ggplot(data = penguins, aes(x = flipper_length_mm)) + 
  geom_histogram()
                  