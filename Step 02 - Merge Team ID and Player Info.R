##
## Merge team ID with the rest of player info, including birthplace
##
## Updated May 31 2013
##
## setwd( "C:/Users/padjdl/Dropbox/02 - CLASSES/02 - MASTERS/03 - R Crash Course/Project Workflow" )



source( "Step 01 - Get Team IDs.R" )


# Read in player data

Master <- read.csv( "./Data/Master.csv" )



# merge(x, y, by = intersect(names(x), names(y)),
#       by.x = by, by.y = by, all = FALSE, all.x = all, all.y = all,
#       sort = TRUE, suffixes = c(".x",".y"),
#       incomparables = NULL, ...)

# Merge with Yankee players

merge1 <- merge( Master, yankees, by.x="playerID", by.y="playerID" )




# Sanity check - should be the same

nrow( yankees )

nrow( merge1 )



# Clean up

rm( Master )

rm( yankees )

ls()


