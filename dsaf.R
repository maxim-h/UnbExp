
library(dplyr)

dt <- read.csv2("admin_2018-04-07 13-11-24_CFX96N5n -  Quantification Cq Results_0.csv")

dm <- dt %>%  mutate(., RW = regmatches(Well, regexpr("^\\w", Well)),
               CM = regmatches(Well, regexpr("[0-9]{2}$", Well))) %>% group_by(., RW)


dm$Cq[dm$CM == "05"]

dm %>%  summarize(., paste0(Cq))
                  
                  
                  
                  
                  
                  filter(., CM=="05"))

str(dm)

summarize(dm, mean(Cq, na.rm = T))


View(dm[dm$RW == "A", ])

regmatches(dt$Well, regexpr("[0-9]{2}$", dt$Well))
dm
