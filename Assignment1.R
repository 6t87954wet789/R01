####### An Analytical Detective ########

#Problem 1

CrimeData = read.csv("C:/C/Education/edX MIT 15.071 - The Analytics Edge/Unit 01 Data Files/mvtWeek1.csv")
str(CrimeData)
summary(CrimeData)
head(CrimeData)
max(CrimeData$ID)
min(CrimeData$Beat)
nrow(subset(CrimeData, Arrest == TRUE))

#Problem 2

DateConvert = as.Date(strptime(CrimeData$Date, "%m/%d/%y %H:%M"))
median(DateConvert)
CrimeData$Month = months(DateConvert)
CrimeData$Weekday = weekdays(DateConvert)
CrimeData$Date = DateConvert
table(CrimeData$Month)
min(table(CrimeData$Month))
#Better:
CrimeData.Monthly = as.data.frame(table(CrimeData$Month))
subset(CrimeData.Monthly, Freq == min(CrimeData.Monthly$Freq))
CrimeData.Weekday = as.data.frame(table(CrimeData$Weekday))
CrimeData.Weekday$Day = CrimeData.Weekday$Var1
CrimeData.Weekday[c("Freq", "Day")]
CrimeData.Weekday = CrimeData.Weekday[c("Freq", "Day")]
head(CrimeData.Weekday)
subset(CrimeData.Weekday, Freq == max(CrimeData.Weekday$Freq))$Day
CrimeData.Arrests = subset(CrimeData, Arrest == TRUE)
nrow(CrimeData.Arrests)
CrimeData.Arrests.Monthly = as.data.frame(table(CrimeData.Arrests$Month))
CrimeData.Arrests.Monthly$Month = CrimeData.Arrests.Monthly$Var1
CrimeData.Arrests.Monthly = CrimeData.Arrests.Monthly[c("Freq", "Month")]
CrimeData.Arrests.Monthly[which.max(CrimeData.Arrests.Monthly$Freq),]$Month

#Problem 3

hist(CrimeData$Date, breaks = 100)
boxplot(CrimeData$Date ~ CrimeData$Arrest)
table(CrimeData$Arrest, CrimeData$Year)
CrimeData.Arrests.Year = as.data.frame(table(CrimeData$Arrest, CrimeData$Year))
CrimeData.Arrests.Year[CrimeData.Arrests.Year$Var2==2001,]
Arrests.2001 = CrimeData.Arrests.Year[CrimeData.Arrests.Year$Var2==2001 & CrimeData.Arrests.Year$Var1 == TRUE ,]$Freq
Incidents.2001 = sum(CrimeData.Arrests.Year[CrimeData.Arrests.Year$Var2==2001 ,]$Freq)
ProportionArrest2001 = Arrests.2001 / Incidents.2001 
ProportionArrest2001
ArrestProportionByYear = function(year){
  Arrests = CrimeData.Arrests.Year[CrimeData.Arrests.Year$Var2==year & CrimeData.Arrests.Year$Var1 == TRUE ,]$Freq
  Incidents = sum(CrimeData.Arrests.Year[CrimeData.Arrests.Year$Var2==year ,]$Freq)
  return (Arrests / Incidents)
}
ArrestProportionByYear (2001)
ArrestProportionByYear (2007)
ArrestProportionByYear (2012)

#Problem 4

sort(table(CrimeData$LocationDescription))
CrimeData.Top5.Locations = subset(CrimeData, CrimeData$LocationDescription == "STREET" | 
                                             CrimeData$LocationDescription == "PARKING LOT/GARAGE(NON.RESID.)" | 
                                             CrimeData$LocationDescription == "ALLEY" | 
                                             CrimeData$LocationDescription == "GAS STATION" | 
                                             CrimeData$LocationDescription == "DRIVEWAY - RESIDENTIAL" )
nrow(CrimeData.Top5.Locations)
head(CrimeData.Top5.Locations)
CrimeData.Top5.Locations$LocationDescription = factor(CrimeData.Top5.Locations$LocationDescription)
str(CrimeData.Top5.Locations)
table(CrimeData.Top5.Locations$LocationDescription)
table(CrimeData.Top5.Locations$LocationDescription, CrimeData.Top5.Locations$Arrest)
table(CrimeData.Top5.Locations$LocationDescription, CrimeData.Top5.Locations$Weekday)

save.image("C:\\C\\Education\\edX MIT 15.071 - The Analytics Edge\\Unit 01 Data Files\\Assignment1Part1.RData")

####### Stock Dynamics ########

# Problem 1

setwd("C:/C/Education/edX MIT 15.071 - The Analytics Edge/Unit 01 Data Files/")
IBM = read.csv("IBMStock.csv")
GE = read.csv("GEStock.csv")
ProcterGamble = read.csv("ProcterGambleStock.csv")
CocaCola = read.csv("CocaColaStock.csv")
Boeing = read.csv("BoeingStock.csv")
summary(IBM)
head(IBM)
str(IBM)
IBM$Date = as.Date(IBM$Date, "%m/%d/%y")
GE$Date = as.Date(GE$Date, "%m/%d/%y")
CocaCola$Date = as.Date(CocaCola$Date, "%m/%d/%y")
ProcterGamble$Date = as.Date(ProcterGamble$Date, "%m/%d/%y")
Boeing$Date = as.Date(Boeing$Date, "%m/%d/%y")
str(IBM)
head(IBM)
min(GE$StockPrice)
max(CocaCola$StockPrice)
median(Boeing$StockPrice)
sd(ProcterGamble$StockPrice)

# Problem 2

plot(CocaCola$StockPrice ~ CocaCola$Date, col = "red") 		# Scatterplot of Coca Cola Price(y) vs Date (x)
lines(ProcterGamble$Date, ProcterGamble$StockPrice, col="blue")	# Superimposes ProcterGamble data as a line
abline(v=as.Date(c("2000-03-01")), lwd=2)					# Adds a vertical line at 1-Mar-2003, lwd is 'line width'

#Problem 3

c(CocaCola$Date[301],CocaCola$Date[432])
plot(CocaCola$Date[301:432], CocaCola$StockPrice[301:432], type="l", col="red", ylim=c(0,210)) #type="l" for line
lines(ProcterGamble$Date[301:432], ProcterGamble$StockPrice[301:432], col="black")	# Superimposes ProcterGamble data as a line
lines(GE$Date[301:432], GE$StockPrice[301:432], col="blue")
lines(Boeing$Date[301:432], Boeing$StockPrice[301:432], col="orange")
lines(IBM$Date[301:432], IBM$StockPrice[301:432], col="purple")
abline(v=as.Date(c("1997-09-01")), lwd=2)
abline(v=as.Date(c("1997-11-01")), lwd=2)

#Problem 4

tapply(IBM$StockPrice, months(IBM$Date), mean, na.rm=TRUE)
mean(IBM$StockPrice)
IBM.Monthly = tapply(IBM$StockPrice, months(IBM$Date), mean, na.rm=TRUE)
IBM.Monthly = data.frame(Month=names(IBM.Monthly), StockPrice=IBM.Monthly)
IBM.Monthly
IBM.Monthly.Mean = mean(IBM.Monthly$StockPrice)
IBM.Monthly[IBM.Monthly$StockPrice > IBM.Monthly.Mean, ]
IBM.Monthly[IBM.Monthly$StockPrice <= IBM.Monthly.Mean, ]
CocaCola.Monthly = tapply(CocaCola$StockPrice, months(CocaCola$Date), mean, na.rm=TRUE)
CocaCola.Monthly = data.frame(Month=names(CocaCola.Monthly), StockPrice=CocaCola.Monthly)
CocaCola.Monthly
CocaCola.Monthly.Mean = mean(CocaCola.Monthly$StockPrice)
CocaCola.Monthly[which.max(CocaCola.Monthly$StockPrice ), ]
GE.Monthly = tapply(GE$StockPrice, months(GE$Date), mean, na.rm=TRUE)
GE.Monthly = data.frame(Month=names(GE.Monthly), StockPrice=GE.Monthly)
GE.Monthly
GE.Monthly.Mean = mean(GE.Monthly$StockPrice)
GE.Monthly[which.max(GE.Monthly$StockPrice ), ]


####### DEMOGRAPHICS AND EMPLOYMENT IN THE UNITED STATES ########

setwd("C:/C/Education/edX MIT 15.071 - The Analytics Edge/Unit 01 Data Files/")
CPS = read.csv("CPSData.csv")

# Problem 1

str(CPS)
summary(CPS)
sort(table(CPS$State)) #1.3
# 1.4 What proportion of interviewees are citizens of the United States?
nrow(CPS[CPS$Citizenship == "Citizen, Native" | CPS$Citizenship == "Citizen, Naturalized",]) / nrow(CPS) 
str(CPS)
HispanicRace = table(CPS$Hispanic, CPS$Race)
HispanicRace = data.frame(Race=colnames(HispanicRace), NonHispanic = as.vector(HispanicRace[1,]), Hispanic = as.vector(HispanicRace[2,]) )
HispanicRace[HispanicRace$Hispanic > 250,]
HispanicRace[HispanicRace$Hispanic > 250,]$Race

# Problem 2
length(which(is.na(CPS$PeopleInHousehold)))
length(which(is.na(CPS$Region)))
length(which(is.na(CPS$State)))
length(which(is.na(CPS$MetroAreaCode)))
length(which(is.na(CPS$Age)))
length(which(is.na(CPS$Married)))
length(which(is.na(CPS$Sex)))
length(which(is.na(CPS$Education)))
length(which(is.na(CPS$Race)))
length(which(is.na(CPS$Hispanic)))
length(which(is.na(CPS$CountryOfBirthCode)))
length(which(is.na(CPS$Citizenship)))
length(which(is.na(CPS$EmploymentStatus)))
length(which(is.na(CPS$Industry)))

table(CPS$Region, is.na(CPS$Married))
table(CPS$Sex, is.na(CPS$Married))
table(CPS$Age, is.na(CPS$Married))
table(CPS$Citizenship, is.na(CPS$Married))

table(CPS$State, is.na(CPS$MetroAreaCode))

MetroLiving = table(CPS$State, is.na(CPS$MetroAreaCode))
MetroLiving = data.frame(MetroLiving)
names(MetroLiving) = c("State", "Metro", "Count")
MetroLiving[MetroLiving$Metro == FALSE& MetroLiving$Count == 0,]
MetroLiving[MetroLiving$Metro == TRUE& MetroLiving$Count == 0,]

#2.4

MetroLiving = table(CPS$Region, is.na(CPS$MetroAreaCode))
MetroLiving = data.frame(MetroLiving)
MetroLivingInside = MetroLiving[MetroLiving$Var2==FALSE,]
MetroLivingOutside = MetroLiving[MetroLiving$Var2==TRUE,]
MetroLiving = merge(MetroLivingInside, MetroLivingOutside, by="Var1")
names(MetroLiving) = c("Region", "A", "InsideMetro", "B", "OutsideMetro")
MetroLiving$A = NULL
MetroLiving$B = NULL
MetroLiving$ProrportionOutsideMetro = MetroLiving$OutsideMetro / (MetroLiving$OutsideMetro + MetroLiving$InsideMetro)

# 2.5

MetroLiving = table(CPS$State, is.na(CPS$MetroAreaCode))
MetroLiving = data.frame(MetroLiving)
MetroLivingInside = MetroLiving[MetroLiving$Var2==FALSE,]
MetroLivingOutside = MetroLiving[MetroLiving$Var2==TRUE,]
MetroLiving = merge(MetroLivingInside, MetroLivingOutside, by="Var1")
names(MetroLiving) = c("Region", "A", "InsideMetro", "B", "OutsideMetro")
MetroLiving$A = NULL
MetroLiving$B = NULL
MetroLiving$ProrportionOutsideMetro = MetroLiving$OutsideMetro / (MetroLiving$OutsideMetro + MetroLiving$InsideMetro)
MetroLiving[ MetroLiving$ProrportionOutsideMetro > 0.29 & MetroLiving$ProrportionOutsideMetro < 0.32,]
MetroLiving[ MetroLiving$ProrportionOutsideMetro > 0.75 & MetroLiving$ProrportionOutsideMetro < 1,]

# Problem 3

MetroAreaMap = read.csv("MetroAreaCodes.csv")
str(MetroAreaMap)
head(MetroAreaMap)
CountryMap = read.csv("CountryCodes.csv")
str(CountryMap)
head(CountryMap)

#Merging:
CPS = merge(CPS, MetroAreaMap, by.x="MetroAreaCode", by.y="Code", all.x=TRUE)  # by.x is field name in 1st table, by.y is field name in 2nd table. all.x=TRUE ==> LEFT JOIN
head(CPS)
nrow(CPS[is.na(CPS$MetroArea),])

sort(table(CPS$MetroArea))

head(CPS)
sort(tapply(CPS$Hispanic, CPS$MetroArea, mean, na.rm=TRUE)) #Metro Area with highest proportion Hispanic

Asians = table(CPS$MetroArea, CPS$Race == "Asian")
Asians = data.frame(Asians)
Asians.False = Asians[Asians$Var2==FALSE,]
Asians.True = Asians[Asians$Var2==TRUE,]
Asians = merge(Asians.True, Asians.False, by="Var1")
names(Asians) = c("MetroArea", "A", "Asian", "B", "NonAsian")
Asians$A = NULL; Asians$B = NULL;
head(Asians)
Asians$Proportion = Asians$Asian / (Asians$Asian + Asians$NonAsian)
subset(Asians, Asians$Proportion >= 0.2)		#over 20% Asian
subset(Asians, Asians$Proportion ==max(Asians$Proportion, na.rm=TRUE))

sort(tapply(CPS$Education == "No high school diploma", CPS$MetroArea, mean, na.rm=TRUE))

# Problem 4

CPS = merge(CPS, CountryMap, by.x="CountryOfBirthCode", by.y="Code", all.x=TRUE)
nrow(subset(CPS, is.na(CPS$Country)))

head(CPS)
unique(CPS$Country)
sort(table(CPS$Country))
NotBornInNA=
	subset(CPS, CPS$Country != "Canada" &
			CPS$Country != "Mexico" &
			CPS$Country != "United States"  )
sort(table(NotBornInNA$Country))

NewYorkers = subset(CPS, CPS$MetroArea ==  "New York-Northern New Jersey-Long Island, NY-NJ-PA")
nrow(NewYorkers)
NewYorkers = subset(NewYorkers, ! is.na(NewYorkers$Country)) #Exclude people with missing country of birth
nrow(NewYorkers)
NewYorkers.USBorn = subset(NewYorkers, NewYorkers$Country == "United States")
nrow(NewYorkers.USBorn)
1 - ( nrow(NewYorkers.USBorn) / nrow(NewYorkers)) # answer to 4.3

Indians = subset(CPS, CPS$Country == "India")
sort(table(Indians$MetroArea))
Brazilians = subset(CPS, CPS$Country == "Brazil")
sort(table(Brazilians$MetroArea))
Somalians = subset(CPS, CPS$Country == "Somalia")
sort(table(Somalians$MetroArea))


####### INTERNET PRIVACY POLL (OPTIONAL) #######

setwd("C:\\C\\Education\\edX MIT 15.071 - The Analytics Edge\\Unit 01 Data Files")
poll = read.csv("AnonymityPoll.csv")
str(poll)
summary(poll)
# Problem 1

nrow(poll)
nrow(subset(poll, poll$Smartphone == 1))
nrow(subset(poll, poll$Smartphone == 0))
nrow(subset(poll, is.na(poll$Smartphone) ))

table(poll$Sex, poll$Region)
table(poll$State, poll$Region)
unique(subset(poll, poll$Region == "Midwest")$State)
poll.south = subset(poll, poll$Region == "South")
poll.south = data.frame(state = poll.south$State, n = 1)
#sort(tapply(poll.south$n, poll.south$state, sum))
poll.south = tapply(poll.south$n, poll.south$state, sum)
poll.south = data.frame(state = names(poll.south), n = as.vector(poll.south))
subset(poll.south, poll.south$n == max(poll.south$n, na.rm=TRUE))

# Problem 2

str(poll)
nrow(subset(poll,	( poll$Smartphone == 0  ) &
			( poll$Internet.Use==0  ) ) )
nrow(subset(poll,	( poll$Smartphone == 1 ) &
			( poll$Internet.Use==1 ) ) )
nrow(subset(poll,	( poll$Smartphone == 0 ) &
			( poll$Internet.Use==1 ) ) )
nrow(subset(poll,	( poll$Smartphone == 1 ) &
			( poll$Internet.Use==0 ) ) )


nrow(subset(poll, is.na(poll$Internet.Use) ) )
nrow(subset(poll, is.na(poll$Smartphone) ) )

limited = subset(poll, poll$Internet.Use == 1 | poll$Smartphone == 1)
nrow(limited)
nrow(limited)/nrow(poll)

# Problem 3
#	For all remaining problems, use limited dataframe
str(limited)
unique(is.na(limited$Internet.Use))
unique(is.na(limited$Smartphone))
unique(is.na(limited$Sex))
unique(is.na(limited$Age))
unique(is.na(limited$State))
unique(is.na(limited$Region))
unique(is.na(limited$Conservativeness))
unique(is.na(limited$Info.On.Internet))
unique(is.na(limited$Worry.About.Info))
unique(is.na(limited$Privacy.Importance))
unique(is.na(limited$Anonymity.Possible))
unique(is.na(limited$Tried.Masking.Identity))

nrow(subset(limited, limited$Info.On.Internet == 0))
nrow(subset(limited, limited$Info.On.Internet == 11))

worried.answerers = subset(limited, ! is.na(limited$Worry.About.Info) )
unique(worried.answerers$Worry.About.Info)
mean(worried.answerers$Worry.About.Info)

anon.answerers = subset(limited, ! is.na(limited$Anonymity.Possible) )
unique(anon.answerers$Anonymity.Possible)
mean(anon.answerers$Anonymity.Possible)

anon.answerers = subset(limited, ! is.na(limited$Tried.Masking.Identity) )
unique(anon.answerers$Tried.Masking.Identity)
mean(anon.answerers$Tried.Masking.Identity)

anon.answerers = subset(limited, ! is.na(limited$Privacy.Laws.Effective) )
unique(anon.answerers$Privacy.Laws.Effective)
mean(anon.answerers$Privacy.Laws.Effective)

# Problem 4

hist(limited$Age)
plot(limited$Age, limited$Info.On.Internet)

table(limited$Age, limited$Info.On.Internet)
max(table(limited$Age, limited$Info.On.Internet))

jitter(c(1,2,3))
jitter(c(1,2,3))
jitter(c(1,2,3))
plot(jitter(limited$Age), jitter(limited$Info.On.Internet))

tapply(limited$Info.On.Internet, limited$Smartphone, summary)

tapply(limited$Tried.Masking.Identity, limited$Smartphone, summary)