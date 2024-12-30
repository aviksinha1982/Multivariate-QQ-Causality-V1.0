ssc install jb.pkg
clear

local dir `c(pwd)'
pwd
use data.dta

tsset CODE
cls

tabstat REN GB INN INF VIX CPU NEE FSLR TPIC CWEN TSLA, stat(count mean median sd min max variance skewness kurtosis p10 p90)

jb REN
quietly: reg REN
estat archlm, lags(1)

jb GB
quietly: reg GB
estat archlm, lags(1)

jb INN
quietly: reg INN
estat archlm, lags(1)

jb INF
quietly: reg INF
estat archlm, lags(1)

jb VIX
quietly: reg VIX
estat archlm, lags(1)

jb CPU
quietly: reg CPU
estat archlm, lags(1)

jb NEE
quietly: reg NEE
estat archlm, lags(1)

jb FSLR
quietly: reg FSLR
estat archlm, lags(1)

jb TPIC
quietly: reg TPIC
estat archlm, lags(2)

jb CWEN
quietly: reg CWEN
estat archlm, lags(1)

jb TSLA
quietly: reg TSLA
estat archlm, lags(1)

