#reading the data

Suicide <- read.csv('Suicide.csv')
View('Suicide')


#loading packages
library(ggplot2)
library(dplyr)
library(tidyverse)
library(ggsci)
library(ggpubr)
#data wrangling

ggplot(data = Suicide, aes(x = sex, y = Freq))+
  labs(x = "Sex", y = "Frequency", title = "ANALYSIS ON SUICIDE RATES")+
  geom_bar(stat = "identity", position = "dodge",color = "red", fill = "red")
  
#piping or chaining data 
Suicide %>% 
  select(age, method, Freq, sex) %>% 
  filter(sex == 'male') %>% 
  filter(!is.na(age)) %>% 
  ggplot(aes(y = fct_reorder(method, Freq), x = age, fill = sex) ) +
  geom_bar(stat = 'identity') +
  scale_fill_manual(values = c('maroon', 'navy'))
  

  





