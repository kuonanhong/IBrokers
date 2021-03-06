reqNewsBulletins <- function(twsconn, allMsgs=TRUE) {
  if( !is.twsConnection(twsconn))
    stop('requires twsConnection object')

  allMsgs <- as.character(as.integer(allMsgs))
  VERSION <- "1"

  writeBin( c(.twsOutgoingMSG$REQ_NEWS_BULLETINS, VERSION, allMsgs), twsconn[[1]])
}

cancelNewsBulletins <- function(twsconn) {
  if( !is.twsConnection(twsconn))
    stop('requires twsConnection object')

  VERSION <- "1"

  writeBin( c(.twsOutgoingMSG$CANCEL_NEWS_BULLETINS, VERSION), twsconn[[1]])
}
