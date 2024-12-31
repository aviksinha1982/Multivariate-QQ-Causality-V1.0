clear

local dir `c(pwd)'
pwd
use data.dta

tsset CODE
cls

dfuller REN, lags(0)
dfuller GB, lags(0)
dfuller INN, lags(0)
dfuller INF, drift lags(0)
dfuller VIX, lags(0)
dfuller CPU, lags(2)
dfuller NEE, lags(0)
dfuller FSLR, lags(0)
dfuller TPIC, lags(0)
dfuller CWEN, lags(0)
dfuller TSLA, lags(0)

varsoc REN GB INN INF VIX CPU, maxlag(7)