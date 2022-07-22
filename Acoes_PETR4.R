install.packages('quantmod')
library(quantmod)

?getSymbols(src='yahoo')

Sys.Date()-100 

getSymbols('PETR4.SA', src = 'yahoo', from = Sys.Date()-100, to = Sys.Date()-1)

candleChart(PETR4.SA)

#sessionInfo()

summary(PETR4.SA$PETR4.SA.Open)

summary(PETR4.SA$PETR4.SA.Close)

min(PETR4.SA$PETR4.SA.Open)
max(PETR4.SA$PETR4.SA.Close)
mean(PETR4.SA)
