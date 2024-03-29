library(quantmod)# Extract data from Yahoo Finance
library(qrmtools)
library(MASS)
library(PerformanceAnalytics)# Calculations that are performed on a stock/portfolio
library(TSA)
library(forecast)# Forecasting the time series
library(fBasics)# Basic Statistical Calculations 
library(urca)# Stationarity Analysis
library(DescTools)
library(TTR)
library(PortfolioAnalytics)
install.packages("DEoptim")
library(DEoptim) # Used for Optimization
install.packages("ROI")
library(ROI)
ICICIPRULI<-getSymbols("ICICIPRULI.NS",from="2015-12-31",auto.assign=FALSE)
ICICIGI<-getSymbols("ICICIGI.NS",from="2015-12-31",auto.assign=FALSE)
HDFCAMC<-getSymbols("HDFCAMC.NS",from="2015-12-31",auto.assign=FALSE)
HAVELLS<-getSymbols("HAVELLS.NS",from="2015-12-31",auto.assign=FALSE)
GODREJCP<-getSymbols("GODREJCP.NS",from="2015-12-31",auto.assign=FALSE)
GAIL<-getSymbols("GAIL.NS",from="2015-12-31",auto.assign=FALSE)
NYKAA<-getSymbols("NYKAA.NS",from="2015-12-31",auto.assign=FALSE)
DLF<-getSymbols("DLF.NS",from="2015-12-31",auto.assign=FALSE)
DABUR<-getSymbols("DABUR.NS",from="2015-12-31",auto.assign=FALSE)
COLPAL<-getSymbols("COLPAL.NS",from="2015-12-31",auto.assign=FALSE)
CHOLAFIN<-getSymbols("CHOLAFIN.NS",from="2015-12-31",auto.assign=FALSE)
BOSCHLTD<-getSymbols("BOSCHLTD.NS",from="2015-12-31",auto.assign=FALSE)
BIOCON<-getSymbols("BIOCON.NS",from="2015-12-31",auto.assign=FALSE)
BERGEPAINT<-getSymbols("BERGEPAINT.NS",from="2015-12-31",auto.assign=FALSE)
BANKBARODA<-getSymbols("BANKBARODA.BO",from="2015-12-31",auto.assign=FALSE)
BANDHANBNK<-getSymbols("BANDHANBNK.NS",from="2015-12-31",auto.assign=FALSE)
BAJAJHLDNG<-getSymbols("BAJAJHLDNG.BO",from="2015-12-31",auto.assign=FALSE)
AVENUE<-getSymbols("DMART.NS",from="2015-12-31",auto.assign=FALSE)
AMBUJACEM<-getSymbols("AMBUJACEM.NS",from="2015-12-31",auto.assign=FALSE)
ACC<-getSymbols("ACC.BO",from="2015-12-31",auto.assign=FALSE)

PVR<-getSymbols("PVR.NS",from="2015-12-31",auto.assign=FALSE)
Honeywell<-getSymbols("HONAUT.NS",from="2015-12-31",auto.assign=FALSE)
Reliance<-getSymbols("RELIANCE.NS",from="2015-12-31",auto.assign=FALSE)
Britannia<-getSymbols("BRITANNIA.NS",from="2015-12-31",auto.assign=FALSE)
summary(Reliance)
Infosys<-getSymbols("INFY.NS",from="2015-12-31",auto.assign=FALSE)
sbin<-getSymbols("SBIN.NS",from="2015-12-31",auto.assign=FALSE)
TCS<-getSymbols("TCS.NS",from="2015-12-31",auto.assign=FALSE)
TATAMOTORS<-getSymbols("TATAMOTORS.NS",from="2015-12-31",auto.assign=FALSE)
TECHM<-getSymbols("TECHM.NS",from="2015-12-31",auto.assign=FALSE)
ADANIPORTS<-getSymbols("ADANIPORTS.NS",from="2015-12-31",auto.assign=FALSE)
ASIANPAINT<-getSymbols("ASIANPAINT.NS",from="2015-12-31",auto.assign=FALSE)
AXISBANK<-getSymbols("AXISBANK.NS",from="2015-12-31",auto.assign=FALSE)
BPCL<-getSymbols("BPCL.NS",from="2015-12-31",auto.assign=FALSE)
DIVISLAB<-getSymbols("DIVISLAB.NS",from="2015-12-31",auto.assign=FALSE)
DRREDDY<-getSymbols("DRREDDY.NS",from="2015-12-31",auto.assign=FALSE)
EICHERMOT<-getSymbols("EICHERMOT.NS",from="2015-12-31",auto.assign=FALSE)
GRASIM<-getSymbols("GRASIM.NS",from="2015-12-31",auto.assign=FALSE)
HDFCBANK<-getSymbols("HDFCBANK.NS",from="2015-12-31",auto.assign=FALSE)
HINDUNILVR<-getSymbols("HINDUNILVR.NS",from="2015-12-31",auto.assign=FALSE)
BAJAJFINSV<-getSymbols("BAJAJFINSV.NS",from="2015-12-31",auto.assign=FALSE)
ULTRACEMCO<-getSymbols("ULTRACEMCO.NS",from="2015-12-31",auto.assign=FALSE)
BAJFINANCE<-getSymbols("BAJFINANCE.NS",from="2015-12-31",auto.assign=FALSE)
WIPRO<-getSymbols("WIPRO.NS",from="2015-12-31",auto.assign=FALSE)
SHREECEM<-getSymbols("SHREECEM.NS",from="2015-12-31",auto.assign=FALSE)
KOTAKBANK<-getSymbols("KOTAKBANK.NS",from="2015-12-31",auto.assign=FALSE)
HINDALCO<-getSymbols("HINDALCO.NS",from="2015-12-31",auto.assign=FALSE)
HDFCLIFE<-getSymbols("HDFCLIFE.NS",from="2015-12-31",auto.assign=FALSE)
HEROMOTOCO<-getSymbols("HEROMOTOCO.NS",from="2015-12-31",auto.assign=FALSE)
TATACONSUM<-getSymbols("TATACONSUM.NS",from="2015-12-31",auto.assign=FALSE)
CIPLA<-getSymbols("CIPLA.NS",from="2015-12-31",auto.assign=FALSE)
COALINDIA<-getSymbols("COALINDIA.NS",from="2015-12-31",auto.assign=FALSE)
BHARTIARTL<-getSymbols("BHARTIARTL.NS",from="2015-12-31",auto.assign=FALSE)
LT<-getSymbols("LT.NS",from="2015-12-31",auto.assign=FALSE)
TITAN<-getSymbols("TITAN.NS",from="2015-12-31",auto.assign=FALSE)
Apollo<-getSymbols("APOLLOHOSP.NS",from="2015-12-31",auto.assign=FALSE)
ITC<-getSymbols("ITC.NS",from="2015-12-31",auto.assign=FALSE)
Tatasteel<-getSymbols("TATASTEEL.NS",from="2015-12-31",auto.assign=FALSE)
NTPC<-getSymbols("NTPC.NS",from="2015-12-31",auto.assign=FALSE)
Nestle<-getSymbols("NESTLEIND.NS",from="2015-12-31",auto.assign=FALSE)
Maruti<-getSymbols("MARUTI.NS",from="2015-12-31",auto.assign=FALSE)
Indusind<-getSymbols("INDUSINDBK.NS",from="2015-12-31",auto.assign=FALSE)
ONGC<-getSymbols("ONGC.NS",from="2015-12-31",auto.assign=FALSE)
ICICI<-getSymbols("ICICIBANK.NS",from="2015-12-31",auto.assign=FALSE)
Nifty<-getSymbols("^NSEI",from="2015-12-31",auto.assign=FALSE)
Sensex<-getSymbols("^BSESN",from="2015-12-31",auto.assign=FALSE)
summary(Maruti)
Prices<-merge(ICICIPRULI[,6],ICICIGI[,6],HDFCAMC[,6],HAVELLS[,6],GODREJCP[,6],GAIL[,6],NYKAA[,6],DLF[,6],DABUR[,6],COLPAL[,6],CHOLAFIN[,6],BOSCHLTD[,6],BIOCON[,6],BERGEPAINT[,6],BANKBARODA[,6],BANDHANBNK[,6],BAJAJHLDNG[,6],AVENUE[,6],AMBUJACEM[,6],ACC[,6],PVR[,6],Honeywell[,6],Infosys[,6],sbin[,6],TCS[,6],TATAMOTORS[,6],BAJAJFINSV[,6],ULTRACEMCO[,6],BAJFINANCE[,6],WIPRO[,6],SHREECEM[,6],KOTAKBANK[,6],HINDALCO[,6],HDFCLIFE[,6],HEROMOTOCO[,6],TATACONSUM[,6],CIPLA[,6],BHARTIARTL[,6],COALINDIA[,6],LT[,6],TITAN[,6],Reliance[,6],Britannia[,6],Apollo[,6],ITC[,6],Tatasteel[,6],NTPC[,6],Nestle[,6],Maruti[,6],Indusind[,6],ONGC[,6],ICICI[,6],TECHM[,6],ADANIPORTS[,6],ASIANPAINT[,6],AXISBANK[,6],BPCL[,6],DIVISLAB[,6],DRREDDY[,6],EICHERMOT[,6],GRASIM[,6],HDFCBANK[,6],HINDUNILVR[,6],Nifty[,6],Sensex[,6])
summary(Prices)
Prices<-na.omit(Prices)
returns<-Return.calculate(Prices,method = "log")
returns
plot(returns)
summary(returns)
returns<-na.omit(returns)
sds <- apply(returns, 2, "sd")
summary(sds)
sds
means <- apply(returns, 2, "mean")
# Create a scatter plot
plot(sds, means)
text(sds, means, labels = colnames(returns), cex = 0.7)
#Correlation between the stocks
chart.Correlation(returns)
charts.PerformanceSummary(returns,0.048351/365)
table.Stats(returns)
dim(returns)
returns[,42]
chart.Boxplot(returns)
chart.RiskReturnScatter(returns[,c(1:41,42)])
table.Variability(returns)
table.Distributions(returns)
table.AnnualizedReturns(returns, Rf = 0.048351/365)# Risk Adjusted returns
table.InformationRatio(returns[,1:6], x[,7])
table.CAPM(x[,1:6],x[,7],Rf = 0.048351/365)# Capital Asset Pricing Model
table.SpecificRisk(x[,1:6], x[,7])
table.Autocorrelation(x[,1:7])
table.Correlation(x[,7],x[,1:6])
table.DownsideRisk(x[,1:7], Rf = 0.048351/365)
table.DownsideRiskRatio(x[,1:7])
table.DrawdownsRatio(x[,1:7],Rf = 0.048351/365)
table.Drawdowns(x[,3], top = 10)
summary(Prices)
