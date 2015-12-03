##
##  Create a barchart of the top ten states players come from
## 
##  setwd( "C:/Users/padjdl/Dropbox/02 - CLASSES/02 - MASTERS/03 - R Crash Course/Project Workflow" )


source( "Step 02 - Merge Team ID and Player Info.R" )

source( "./Functions/createPlayerBarplot.R" )







t1 <- table( merge1$birthState )


createPlayerBarplot( t1 )


# Save the graph as Figure 1

pdf( "./Results/Figure 1 - Origin States of Players.pdf" )

createPlayerBarplot( t1 )

dev.off()




# Clean up

rm( t1 )




