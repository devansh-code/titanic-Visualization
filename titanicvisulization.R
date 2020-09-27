install.packages("ggplot2")
install.packages("dplyr")
library("readxl")
library("tidyverse")
library(dplyr)
library(ggplot2)
titanic <-  read.csv("C:/Users/Devansh/Downloads/titanic.csv")
View(titanic)
titanic$Pclass <- as.factor(titanic$Pclass)
#titanic$Survived <- as.factor(titanic$Survived)
#titanic$Sex <- as.factor(titanic$Sex)
#titanic$Embarked <- as.factor(titanic$Embarked)
ggplot(titanic, aes(x = Survived)) + 
  geom_bar()
ggplot(titanic, aes(x = Survived)) + 
  theme_bw() +
  geom_bar() +
  labs(y = "Passenger Count",
       title = "Titanic Survival Rates")
ggplot(titanic, aes(x = Sex, fill = Survived)) + 
  geom_bar() +
  labs(y = "Passenger Count",
       title = "Titanic Survival Rates by Sex")
ggplot(titanic, aes(x = Pclass, fill = Survived)) + 
  geom_bar() +
  labs(y = "Passenger Count",
       title = "Titanic Survival Rates by Pclass")
ggplot(titanic, aes(x = Sex, fill = Survived)) + 
  facet_wrap(~ Pclass) +
  geom_bar() +
  labs(y = "Passenger Count",
       title = "Titanic Survival Rates by Pclass and Sex")





