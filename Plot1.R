# Have total emissions from PM2.5 decreased in the United States from 1999 to 2008?
# Use base plotting system, make a plot showing the Total PM2.5 emission from all sources for each of the years, 1999, 2002, 2005, and 2008
#
TotalByYear<- aggregate(Emissions ~ year, NEI, sum)
png('Plot1.png', width= 480, height= 480, units= "px", bg="transparent")
barplot((TotalByYear$Emissions)/10^6, 
        names.arg= TotalByYear$year,
        xlab= 'year',
        ylab= "PM2.5 Emissions (Millions of Tons)",
        main = "Total PM2.5 Emissions from all Sources")
dev.off(
)
