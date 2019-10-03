library(tidyverse)

test_data <- read_csv("data/own_data/Test-data_20190813.csv") 

test_data_inter_tidy <- gather(test_data, key = time, value = HydroExt, 
       -Labels, -Samples, -Replicats, -AmyloseContent, -SSArea)

# add a new column called time to restore the column names
# add a new column called HydroExt to restore the values

test_data_inter_tidy_ordered <- test_data_inter_tidy %>% 
  select(Labels, Samples, Replicats, time, HydroExt, AmyloseContent, SSArea) %>% 
  arrange(Labels)

# Ordering the columns using select function and arrange the raws by Label names

glimpse(test_data_inter_tidy_ordered) # a quick check of the dataframe

mutate(test_data_inter_tidy_ordered, time = str_sub(time, start = 3, end = 4))

# doesn't work well cuz we have diff string length
# what function can we use here ???
