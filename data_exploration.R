sharks = read.csv("attacks.csv", header=TRUE, stringsAsFactors = FALSE, na.strings="")

View(sharks)

class(sharks)

str(sharks)

head(sharks)

head(sharks$Type)

shark_country = as.factor(sharks$Country) 
attack_type = as.factor(sharks$Type)
barplot(prop.table(table(attack_type)))
hist(sharks$age)
