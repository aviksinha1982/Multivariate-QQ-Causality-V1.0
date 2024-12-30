ssc install mvcorr.pkg
cls
clear

local dir `c(pwd)'
pwd
use data.dta

tsset CODE
mvcorr REN GB, generate(REN_GB) window(30)
mvcorr REN INN, generate(REN_INN) window(30)
mvcorr REN INF, generate(REN_INF) window(30)
mvcorr REN VIX, generate(REN_VIX) window(30)
mvcorr REN CPU, generate(REN_CPU) window(30)
drop in 1/30
export excel CODE REN_GB using "Rolling Window Correlation", sheet("REN-GB", modify) firstrow(variables)
export excel CODE REN_INN using "Rolling Window Correlation", sheet("REN-INN", modify) firstrow(variables)
export excel CODE REN_INF using "Rolling Window Correlation", sheet("REN-INF", modify) firstrow(variables)
export excel CODE REN_VIX using "Rolling Window Correlation", sheet("REN-VIX", modify) firstrow(variables)
export excel CODE REN_CPU using "Rolling Window Correlation", sheet("REN-CPU", modify) firstrow(variables)
drop REN_*
cls
