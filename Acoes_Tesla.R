
library(quantmod)

Sys.Date()-100 

getSymbols('TSLA', src = 'yahoo', from = Sys.Date()-100, to = Sys.Date()-1)

candleChart(TSLA)

#sessionInfo()

summary(TSLA$TSLA.Open)

summary(TSLA$TSLA.Close)

min(TSLA$TSLA.Open)
max(TSLA$TSLA.Close)
mean(TSLA)
