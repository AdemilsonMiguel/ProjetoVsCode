install.packages('prophet')
library(prophet)
library(quantmod)

papel <- getSymbols('MGLU3.SA',
                    from = '2022-01-01',
                    to = Sys.Date(),
                    auto.assign = FALSE) #df não fica na memória

papel
tail(papel)

df <- data.frame(matrix(ncol = 2, nrow = nrow(papel)))
tail(df)

nomes_colunas <- c('ds', 'y')
colnames(df) <- nomes_colunas

tail(papel)

index(papel)

df$ds <- as.Date(index(papel), "%y/%m/%d/%H/%M")
tail(df)

df$y <- papel$MGLU3.SA.Close

tail(df)

modelo <- prophet::prophet(df, daily.seasonality = TRUE)
futuro <- prophet::make_future_dataframe(modelo, periods = 35)

forecast <- stats::predict(modelo, futuro)

glimpse(forecast)

tail(forecast[c('ds', 'yhat', 'yhat_lower', 'yhat_upper')], 10)

prophet::dyplot.prophet(modelo, forecast)
