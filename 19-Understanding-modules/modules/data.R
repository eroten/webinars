library(gapminder)
library(dplyr)
gapminder <- gapminder::gapminder

# Note: This code creates data sets to use in each tab.
# It removes Kuwait since Kuwait distorts the gdp scale
all_data <- filter(gapminder, country != "Kuwait")
africa_data <- filter(gapminder, continent == "Africa")
americas_data <- filter(gapminder, continent == "Americas")
asia_data <- filter(gapminder, continent == "Asia") %>%
                      filter("country" != "Kuwait")
europe_data <- filter(gapminder, continent == "Europe")
oceania_data <- filter(gapminder, continent == "Oceania")

