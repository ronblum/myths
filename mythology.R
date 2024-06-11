name <- c("Loki", "Thor", "Odin", "Athena", "Zeus", "Hades", "Hel", "Isis", "Minerva", "Jupiter", "Osiris", "Pluto", "Baldur", "Pan", "Echo", "Valkyrie", "Aphrodite", "Heracles", "Hercules")
pantheon <- c("Norse", "Norse", "Norse", "Greek", "Greek", "Greek", "Norse", "Egyptian", "Roman", "Roman", "Egyptian", "Roman", "Norse", "Greek", "Greek", "Norse", "Greek", "Greek", "Roman")
type <- c("god", "god", "god", "god", "god", "god", "god", "god", "god", "god", "god", "god", "god", "god", "other", "warrior", "god", "warrior", "warrior")
domain <- c("Mischief", "Thunder", "Ruler", "Wisdom", "Ruler", "Underworld", "Underworld", "Nature", "Wisdom", "Ruler", "Underworld", "Underworld", "Beauty", "Nature", "Echo", "Fallen Heroes", "Beauty", "Strength", "Strength")
gender <- c("M", "M", "M", "F", "M", "M", "F", "F", "F", "M", "M", "M", "M", "M", "F", "F", "F", "M", "M")
gender_factor <- factor(gender)
levels(gender_factor) <- c("Female", "Male")
home <- c("Asgard", "Asgard", "Asgard", "Mt. Olympus", "Mt. Olympus", "Hell", "Hell", "Earth", "Mt. Olympus", "Mt. Olympus", "Hell", "Hell", "Asgard", "Earth", "Earth", "Earth", "Mt. Olympus", "Earth", "Earth")
deities <- data.frame(name, pantheon, type, domain, gender_factor, home)
deities
str(deities)
summary(deities)


location <- c("Asgard", "Earth", "Hell", "Mt. Olympus")
placement <- c("H", "M", "L", "H")
placement_factor <- factor(placement, ordered = TRUE, levels = c("L", "M", "H"))
levels(placement_factor) <- c("Down Below", "In the Middle", "High Above")
places <- data.frame(location, placement_factor)
summary(placement_factor)
str(placement_factor)
summary(places)
str(places)
places

library(tidyverse)
library(readxl)
library(dplyr)
in_deities <- read_excel("Deities.xlsx")
View(in_deities)
in_deities
in_deities[3:4,1:2]
in_deities["Pantheon"]
in_deities %>%
	filter(Name == "Loki")
in_deities %>%
	count(Pantheon)
in_deities %>%
	count(Home)
in_deities %>%
	filter(Pantheon == "Norse")
in_deities %>%
	filter(Pantheon == "Norse", Home == "Asgard")
in_deities %>%
	filter(Pantheon == "Norse", Home == "Asgard")
in_deities %>%
	filter(Pantheon == "Greek", Home != "Mt. Olympus")
in_deities %>%
	count(Pantheon)
in_deities %>%
	count(Pantheon)
in_deities %>%
	filter(Pantheon != "Greek") %>%
	count(Pantheon)
in_deities %>%
	count(Pantheon != "Greek")
in_deities %>%
	filter(Domain == "Underworld")
in_deities %>%
	filter(Domain == "Underworld") %>%
	count()



