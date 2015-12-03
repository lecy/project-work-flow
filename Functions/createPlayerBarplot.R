# #####################################################
#
#   The ‘createPlayerBarplot’ function.
#
#   Custom barplot for Lahman package
#
#   Arguments:
#     t1      = a table of players by cities
#
#   Returns:  creates graph with NULL return
#
# ===================================================


createPlayerBarplot <- function( t1 )
{

   t1 <- t1[ order( t1, decreasing=T) ]
   
   t2 <- t1[ 1:10 ]
   
   xs <- barplot( t2, col="Steel Blue", ylim=c(0,max(t2)+25) )

   title( main="Top Feeder States for the Yankees" )
   
   text( xs, t2, t2, pos=3 )
   
   return( NULL )
   
}