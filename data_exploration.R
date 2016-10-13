sharks = read.csv("attacks.csv", header=TRUE, stringsAsFactors = FALSE, na.strings="")

View(sharks)

class(sharks)

str(sharks)

head(sharks)

summary(sharks)

shark_country = as.factor(sharks$Country) 
attack_type = as.factor(sharks$Type)
barplot(prop.table(table(shark_country)))

### TOP 3 COUNTRIES WITH HIGHEST RECORDS ###
barplot(sort(table(shark_country),decreasing=TRUE)[1:3])


### FOCUSING IN ON THE USA AREAS ###
sharks.sub = subset(sharks, sharks$Country == "USA")
View(sharks.sub)

shark_areas = as.factor(sharks.sub$Area)
barplot(prop.table(table(shark_areas)))
### FLORIDA IS THE MOST DANGEROUS. OR THEY HAVE THE BEST RECORDING HABITS
barplot(sort(table(shark_areas),decreasing=TRUE)[1:3])


areas.sub = subset(sharks.sub, sharks.sub$Area == "Florida")
shark_location = as.factor(areas.sub$Location)
barplot(sort(table(shark_location),decreasing=TRUE)[1:3])

