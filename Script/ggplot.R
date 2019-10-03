library(tidyverse)

read_csv("Data/gapminder.csv")

gapminder <- read_csv("Data/gapminder.csv")

gapminder_1977 <- filter(gapminder, year == 1977)

