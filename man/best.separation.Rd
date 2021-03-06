% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/best.separation.R
\name{best.separation}
\alias{best.separation}
\title{A function that performs the marker selection.}
\usage{
best.separation(flist, fr, debug.mode = FALSE, plotEnv = new.env(parent =
  emptyenv()), ...)
}
\arguments{
\item{flist}{a list of filters/gates generated by mindensity method}

\item{fr}{flowFrame}

\item{...}{passed to density function}

\item{min.percent}{the minimum ratio of two peak areas. The marker will be disqualified automatically when its measurement is lower than this threshold}
}
\value{
an integer as the index of the winner gate. When it returns 0, it indicates that no further gating should be proceeded
}
\description{
It combines all the following factors to determine which marker has the best the peak separation
1. distance between two peaks
2. height ratio between two peaks
3. valley to peak(lower of the two peaks) height ratio
4. area ratio between two peaks
}
\examples{
data(GvHD)
fr <- GvHD[[1]]

 #  transform the raw data
channels <- c("FL1-H", "FL2-H", "FL3-H", "FL4-H")
trans <- estimateLogicle(fr, channels)
fr <- transform(fr, trans)

#run the 1d gating on these channels
flist <- sapply(channels, function(channel)mindensity(fr, channel))

#select the best marker
ind <- best.separation(flist, fr)
channels[ind] #winner channel

objs <- best.separation(flist, fr, debug.mode = TRUE) #turn on the debug mode to display plots
objs[["metrics"]]
plot(objs[["plotObjs"]])
}

