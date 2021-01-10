
#Exercise 1
#create a vector
names <- c("Peter", "Nanna", "Anna", "Sara", "Andreas")

#2.make another vector with a guess ofhow many siblings they each have
siblings <- c(2,0,1,1,0)

#add 2 to both vectors
siblings+2 #this will add 2 to each element of vector
siblings1 <- c(siblings, 2) #this will add 2 as an extra element of vector

#4. Check the class of both vectors
class(names)
class(siblings)

#5. How many siblings do people have in total?
sum(siblings)

#Whats the product of person 1 and 2s number of siblings?
sum(siblings[1],siblings[2])



#Exercise 2:
#Create a dataframe with names and siblings
df <- data.frame(names =c("Peter", "Nanna", "Anna", "Sara", "Andreas"))
df <- data.frame(names =c("Peter", "Nanna", "Anna", "Sara", "Andreas"), siblings)
df[1,2]
df

#add gender to the dataframe

genders <- c("male","female","female","female","male")
df <- data.frame(names =c("Peter", "Nanna", "Anna", "Sara", "Andreas"), siblings, genders)
df

#Add a new person
#how can I add a new person?
as.character(names)
new <- c("Rikke")
rbind(names, new)


#What is the mean number of siblings?
mean(siblings)

#Make a new column with how many siblings each person actually have
siblings2 <- c("2", "3", "1","0","0")
df <- data.frame(names =c("Peter", "Nanna", "Anna", "Sara", "Andreas"), siblings, siblings2, genders)
df

#make a colum with numbers showing how much you where "off"
off <- c("0","3","0","1","0")
df <- data.frame(names =c("Peter", "Nanna", "Anna", "Sara", "Andreas"), siblings, siblings2, off, genders)
df

#Exercise 3
#create functions

#not sure how to solve it

#also --> how do I push iy to a portfolio in github?

