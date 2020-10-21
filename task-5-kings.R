library(tidyverse)

#set cards
houses <- c("Club","Heart","Joker","Diamond","Spade")
characters <- c("Aces","Kings","Queens","Jacks","Tens","Nines","Eights","Sevens","Sixes",
            "Fives","Fours","Threes","Twos","Ones")

#create random student names
names_of_students <- paste(rep("student",25),1:25,sep="-")

#determine number of groups required
no_of_groups <- ceiling(length(names_of_students)/length(houses))

#create data frame where students randomly assigned house & character
data.frame("characters" = rep(characters[1:no_of_groups],no_of_groups),
           "houses" = c(rep(houses[1],no_of_groups),rep(houses[2],no_of_groups),
                        rep(houses[3],no_of_groups),rep(houses[4],no_of_groups),rep(houses[5],no_of_groups)),
           "names_of_students" = sample(names_of_students)) %>%
  group_by(characters) %>% arrange(.by_group=T)
  



