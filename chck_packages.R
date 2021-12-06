# Function to check if pkgs are installed, install missing pkgs, and load all required pkgs.
pkgTest <- function(x)
{
  if (!require(x,character.only = TRUE))
  {
    install.packages(x,dep=TRUE)
    if(!require(x,character.only = TRUE)) stop(x, " :Package not found")
  }
}

# create list of required packages
list.of.packages <- c("ncdf4", "httr", "lubridate", "plyr", "rerddap", "sf", "maps", "mapdata", "maptools", "parsedate", "readr", "rgdal", "date", 
"plotdap", "raster", "sp", "rerddapXtracto")

# create list of installed packages
pkges = installed.packages()[,"Package"]

# Install and load all required pkgs
for (pk in list.of.packages) {
  pkgTest(pk)
}
