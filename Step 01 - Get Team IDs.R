##
##  Read in player info - field players and pitchers
##
##  Updated May 31 2013
##
##  setwd( "C:/Users/padjdl/Dropbox/02 - CLASSES/02 - MASTERS/03 - R Crash Course/Project Workflow" )





library( Lahman )



# Read in data

Batting <- read.csv( "./Data/Batting.csv" )

Pitching <- read.csv( "./Data/Pitching.csv" )



# Combine id's from batters and pitchers

bat.sub <- Batting[ , c("playerID","teamID") ]

pitch.sub <- Pitching[ , c("playerID","teamID") ]





# Team ID index for all players

combined <- rbind( bat.sub, pitch.sub )





# Identify all of the Yankee players

yankees <- combined[ combined$teamID=="NYA" , ]



# Only need one observation per player

yankees <- unique( yankees )



# Clean up

rm( Batting )

rm( Pitching )

rm( bat.sub )

rm( pitch.sub )

rm( combined )

ls()






