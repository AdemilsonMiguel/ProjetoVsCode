install.packages('quantmod')
library(quantmod)

Sys.Date()-100 

getSymbols('MGLU3.SA', src = 'yahoo', from = Sys.Date()-100, to = Sys.Date()-1)

candleChart(MGLU3.SA)

#sessionInfo()

summary(MGLU3.SA$MGLU3.SA.Open)

summary(MGLU3.SA$MGLU3.SA.Close)

min(MGLU3.SA$MGLU3.SA.Open)

max(MGLU3.SA$MGLU3.SA.Close)

mean(MGLU3.SA)
