##
##  Examine relationship between age and weight
## 
##  setwd( "C:/Users/padjdl/Dropbox/02 - CLASSES/02 - MASTERS/03 - R Crash Course/Project Workflow" )


source( "Step 02 - Merge Team ID and Player Info.R" )

library( memisc )



m.01 <- lm( weight ~ birthYear, data=merge1 )

m.02 <- lm( height ~ birthYear, data=merge1 )

summary( m.01 )

mtable.01 <- mtable( "Model 1"=m.01, "Model 2"=m.02, 
                      summary.stats=c("sigma","R-squared","F","p","N"))

mtable.01

write.mtable( mtable.01, file="./Results/Table 1.txt" )

