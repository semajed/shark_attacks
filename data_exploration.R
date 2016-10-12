sharks = read.csv("attacks.csv", header=TRUE, stringsAsFactors = FALSE, na.strings="")

View(sharks)

class(sharks)

str(sharks)

head(sharks)

hist(sharks$Country)
