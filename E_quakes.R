#data set of practice class

#e_quakes=read.csv('path/quakes.csv',header=True,sep",")

e_quakes<-datasets::quakes

#top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)

#columns
e_quakes[,c(1,2)]

#in R summary means Describe of dataset
summary(e_quakes[,1])

e_quakes
summary(e_quakes$lat)
summary(e_quakes)

##plot
plot(e_quakes$long)
plot(e_quakes$lat,e_quakes$mag,type='p')
plot(e_quakes)

#points and lines
plot(e_quakes$depth,type='l')  #l=lines,p=points,b=both


plot(e_quakes$depth,xlab='Depth characteristics',ylab='no. of columns',main='plot of depth',col='blue')

#horizontal bar plot
barplot(e_quakes$mag,ylab='no. of columns',main='plot of mag',col='blue',horiz=F,axes=T)

#histogram
hist(e_quakes$stations)
hist(e_quakes$long,
     main='long plot of e_quakes',
     xlab='mag value.',col='blue')

#single boxplot
boxplot(e_quakes$depth,main='Boxplot')
boxplot.stats(e_quakes$depth)$out

#multiple box plots
boxplot(e_quakes[,1:4],main='Multiple')

#margin of the grid(mar)
#no of rows and columns(mfrow)
#whether a barder is to be include(bty)
#and position of the 
#labels(las:1 for horizontal,las:0 for vertical)
#bty-box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,0),las=0,bty='o')
plot(e_quakes$long)

plot(e_quakes$lat,e_quakes$long)
plot(e_quakes$depth,type='l')
plot(e_quakes$depth,type='l')
plot(e_quakes$depth,type='l')
barplot(e_quakes$mag,main='mag characteristics',
        xlab='mag',col='blue',horiz=TRUE)
hist(e_quakes$stations)
boxplot(e_quakes$stations)
boxplot(e_quakes[,0:4],main='multiple box plot')

sd(e_quakes$depth,na.rm=T)
var(e_quakes$depth)

#skewness
skewness(e_quakes$depth)

#kurtosis
kurtosis(e_quakes$depth)
