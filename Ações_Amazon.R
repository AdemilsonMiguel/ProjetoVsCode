install.packages('quantmod')
library(quantmod)

Sys.Date()-150 

getSymbols('AMZO34.SA', src = 'yahoo', from = Sys.Date()-150, to = Sys.Date()-1)

candleChart(AMZO34.SA)

#sessionInfo()

summary(AMZO34.SA$AMZO34.SA.Open)

summary(AMZO34.SA$AMZO34.SA.Close)

min(AMZO34.SA$AMZO34.SA.Open)
max(AMZO34.SA$AMZO34.SA.Close)
mean(AMZO34.SA)