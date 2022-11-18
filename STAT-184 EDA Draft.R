## What decade has the most popular games and what genre is the game?

library(readr)
install.packages("dplyr")
library(dplyr)

dataforEDA <- read.csv(file = "steamdata.csv", header=TRUE, stringsAsFactors=FALSE)
head(dataforEDA)
View(dataforEDA)

## The Source of the Data is Kaggle.
# Source (https://www.kaggle.com/datasets/thedevastator/get-your-game-on-metacritic-recommendations-and?resource=download&select=games-features-edit.csv)
# The DataFrame has many variable, however the the ones we are most interested in are
# The Metacritic Score, ResponseName,and ReleaseDate

proc = (
  dataforEDA %>%
    group_by(ResponseName) %>%
    summarise(
      n = n(),
      Metacritic 
    ) %>%
    filter(
      n > 1,
      Metacritic > 80
    ))
  
head(proc)

#We now have a better idea of what we need to answer our research question. We have defined a game as popular
#If it has a metacritic score of 80 and above. Thus we are one step closer to answering our research question.
#Our next goal is to use our finding in this exercise and use it in our final draft to find which era had the most popular games.
