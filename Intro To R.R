#Some commands used

WHO = read.csv("C:/C/Education/edX MIT 15.071 - The Analytics Edge/Unit 01 Data Files/WHO.csv")
summary(WHO)
str(WHO) #structure
head(WHO)

table(WHO$Region)
tapply(WHO$LiteracyRate, WHO$Region, min)
plot( WHO$GNI, WHO$FertilityRate)
outliers = subset(WHO, GNI > 10000 & FertilityRate > 2.5)
WHO[which.max(WHO$Over60),]
WHO[which.min(WHO$Over60),]$Country
boxplot(WHO$LifeExpectancy ~ Who$Region)
boxplot(WHO$LifeExpectancy ~ WHO$Region, xlab="", ylab="Life Expectancy", main="Life Expectancy of Countries by Region")
table(WHO$Region)

hist(WHO$CellularSubscribers)


WHO.Europe = subset(WHO, Region == "Europe")
summary(Europe)
mean(WHO$Over60)
sd(WHO$Over60)
subset(WHO.Europe, Country == "Germany")
write.csv(WHO.Europe, "WHO_Europe.csv")
ls()
rm(WHO.Europe) #deletes frame in memory, but not CSV file.
ls()