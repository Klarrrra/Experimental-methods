#class 2: data mining/ tranformation
library(tidyverse)
#definitions:
#WD(working directory) = the default location of any file you read intor R
#Workspace = save as workspace if you want R to remember all the variables for next time
getwd()

#Question: So right now in my encviroment I have a lot of daraframes - is there a way to only have the ones that are relevant?

#Importing personality-data
library(pacman)
pacman::p_load(tidyverse)

setwd("/Users/marko/Downloads/")
personality <- read.table("NEW_CogSciPersonalityTest2019.csv", header= TRUE, sep=",")


#Exercise 1 - filter()
#find a student that:

#Have shoe size 39 or biiger 
filter(personality,shoesize>=39)
bigfeets <- filter(personality, shoesize>=39)
bigfeets
mean(personality$shoesize)

#Where able to touch the floor
filter(personality, touch_floor == "Yes" & touch_floor =="Yes, of course!!")
touchingfloor <- filter(personality, touch_floor == "Yes" & touch_floor =="Yes, of course!!")
touchingfloor

levels(personality$touch_floor) #checking all levels


#Where able to hold their breath longer than average
filter(personality,breath_hold>mean(breath_hold))

#could balance a ballon between 13 and 60 seconds
balloon1 <- filter(personality, balloon>13 & balloon<60)
balloon1

#it could be interesting to get a direct output of the names of people with these capabilities 


#Exercise 2
#arrange()

#1:sort data so it starts with the student who was the slowest tongue twister 
RankingTable <- arrange(personality,desc(- tongue_twist))
RankingTable


#2:find the student who did the best in the romberg task
TheBest <- arrange(personality,desc(romberg_closed))
TheBest


#Exercise 3
#select()

#1: What happens if you select the same column name multiple times?
select(personality, name, name, name, name, name) #notning happens?

#2:make the folowing vector
vars = c("name", "shoesize","touch_floor")
vars

#what happens when you use this vector to select() from the dataframe=
select(personality, vars) #you only get the 3 vectors


#3: rearrange your dataframe with gender and shoesize first.
select(personality,gender, shoesize, everything())
brandnew <-select(personality,gender, shoesize, everything())
brandnew


#Exercise 4
#Mutate()

#1: make new collumn with words pr. second out of tongue twister
personality <- mutate(personality, words_per_second = (99/tongue_twist))
personality

#convert breath_hold in two new columns called "breath_min" and "breath_sec"
personality <- mutate(personality, breath_min= breath_hold %/% 60, breath_sec =breath_hold - breath_min*60) 

#Extra
Alphabetical <- arrange(personality, personality$name)#you can also arrange like this




by_gender <- group_by(personality, gender)
summarise(by_gender, mean(shoesize))

#same but with pipes:
personality %>%
  group_by(gender) %>%
  summarise(mean(shoesize))



#Exercise 5
#summarize()

#is there a gender difference when it comes to balloon balancing?
personality %>%
  group_by(gender) %>%
  summarise(mean(balloon_balance))

#is there a relation between sound level preference and cola-choice?

personality %>%
  group_by(taste_cola) %>%
  summarise(mean(sound_level_pref)) 


#does handedness influence tongue twisting speed?
personality %>%
  group_by(handedness) %>%
  summarise(mean(words_per_second))










