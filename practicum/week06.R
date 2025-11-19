library(MASS) #load the MASS package

#task49
data(survey)
?survey   #get the description of survey

exercises <- survey$Exer
exercises
table(exercises)
barplot(table(exercises))
pie(table(exercises))