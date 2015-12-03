

##
##  Examine relationship between year of birth and height - are players getting taller?
## 
##  setwd( "..." )


t1 <- tapply( merge1$height, merge1$birthYear, mean, na.rm=T )

plot( names(t1), t1, type="b", pch=19, cex=0.8, 
      ylab="Average Height", xlab="Birth Year",
      main="Change in Height Over Time")
      


# SAVE RESULTS

pdf( "Results/Height by Birth Year.pdf" )

plot( names(t1), t1, type="b", pch=19, cex=0.8, 
      ylab="Average Height", xlab="Birth Year",
      main="Change in Height Over Time")
      
dev.off()