### .Profile, updated 04/03/2012

.libPaths("~/Rlibs")
options(papersize="a4")
options(repos="http://stat.ethz.ch/CRAN/")

options(tabwidth=2) 
options(width=120)
options(digits=4)
options(verbose=FALSE)
options(stringsAsFactors=FALSE)
options(device="quartz")

q <- function (save="no", ...) {
  quit(save=save, ...)
}
 

.First <- function () {
	options (length=99999)
	set.seed (1234)
#	utils:::setWindowTitle(paste ("-",getwd()))
}

.Last <- function()
   {
	cat(paste(Sys.time(),"\n"))
}

if(Sys.getenv("TERM") %in% c( "xterm-256color", "xterm"))
  library("colorout")

sh <- function(a.package){
  suppressWarnings(suppressPackageStartupMessages(
    library(a.package, character.only=TRUE)))
}
 
auto.loads <-c("data.table", "devtools", "ggplot2", "dplyr", "readr",
               "colorout", "setwidth", "vimcom")
 
if(interactive()){
  invisible(sapply(auto.loads, sh))
  options(help_type = "text")
}
 


setwd('~/Dropbox/gtb2015')
source('fun.R')

theme_set(theme_bw())


 

