library(quantmod)

Sys.Date()-100 

getSymbols('CRDA.L', src = 'yahoo', from = Sys.Date()-100, to = Sys.Date()-1)

candleChart(CRDA.L)

#sessionInfo()

summary(CRDA.L$CRDA.L.Open)

summary(CRDA.L$CRDA.L.Close)

min(CRDA.L$CRDA.L.Open)
max(CRDA.L$CRDA.L.Close)
mean(CRDA.L)
