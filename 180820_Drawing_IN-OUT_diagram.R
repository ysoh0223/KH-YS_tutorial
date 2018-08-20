rm(list=ls())

library(doBy)
library(graphics)
library(data.table)
library(chron) #install.packages("chron")
library(calibrate) #install.packages("calibrate")
#library(extrafont) #install.packages("extrafont")
#loadfonts("Times New Roman")
windowsFonts(A=windowsFont("Times New Roman"))
plot_type <- 'p'

mydata <- read.csv("150512_in-out.csv")
head(mydata)

#define the x-axis range
sxlim <- 0 #x-axis start, default = 0
exlim <- 80000 #max(mydata$Cumulative.Flow) #x-axis end , default = 8000
x_interval <-10000 #define x-axis tickmarks , default = 2000

#define the y-axis range
sta_tt <- strptime("10:00:00", format = "%H:%M:%S") # default = 00:00:00
sta_ttlim <- strptime("01:00:00", format = "%H:%M:%S") # default = 00:00:00
end_tt <- strptime("22:00:00", format = "%H:%M:%S")# default = 01:20:00
t_interval <- 12 #define time tickmarks in y-axis # default = 4


x <- strptime(mydata$DN_t, format="%H:%M:%S") 
y <- mydata$Cumulative.Flow

par(family="A", cex.axis=1.2, cex.lab=1.2, cex.main=1.3)
#plot ellipsoid
plot(x,y, xaxs="i", yaxs="i",col="black", lwd = 2, lty=1, 
ylim=c(sxlim,exlim), xlim=as.POSIXct(c(sta_tt,end_tt)), yaxt="n", xaxt="n", pch=17, cex=0.7,
 type="l", xlab="", ylab="",) 

par(new=T)

x2 <- strptime(mydata$UP_t, format="%H:%M:%S") 

par(family="A", cex.axis=1.2, cex.lab=1.2, cex.main=1.3)
#plot ellipsoid
plot(x2,y, xaxs="i", yaxs="i",col="gray60", lwd = 2, lty=1, 
ylim=c(sxlim,exlim), xlim=as.POSIXct(c(sta_tt,end_tt)), yaxt="n", xaxt="n", pch=17, cex=0.7,
 type="l", xlab="", ylab="",) 
zzzz
axis(side=2, at = seq(sxlim,exlim,x_interval)) #x=va1,
axis.POSIXct(side=1, x=tt1, pos=0, at = seq(sta_tt,end_tt,by= ((end_tt-sta_tt)/t_interval)), format = "%H:%M")


library(ggplot2)

g1 <- ggplot(aes(X=DN), data=mydata)
g2 <- g1+stat_density(mydata$DN, fill="#F8766D", bw = .0975, mydata$Cumulative.Flow, alpha = .75)






################## Trach CAN ####################

library(Ake) #install.packages("Ake") #?Ake
dke.fun(mydata$


mdf$variable <- as.numeric(as.character(mdf$variable))

g <- ggplot(mdf,aes(variable,value,group=variable,colour=t))
g +
    geom_point() +
    #scale_x_continuous() +
    opts()














