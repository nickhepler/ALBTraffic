#  download_mva_windows.R
#
#  Version 0.1.0
#
#  Copyright 2015 Nick Hepler <nhepler@albany.edu>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#
#
if (!file.exists("data")) {
  dir.create("data")
}

OutputFile <- file("./data/output.txt") #  Create output file.

#  Set URL and destination of file to download
file.mva.url <- "https://data.ny.gov/api/views/e8ky-4vqe/rows.csv?accessType=DOWNLOAD"
file.mva.dest <- "./data/raw_mva.csv"

download.file(file.mva.url,
              destfile = file.mva.dest, 
              method = "wb") #  Download motor vehicle crash data

file.mva.timestamp <- date() #  Write timestamp

writeLines(c("Downloaded MVA data :: ",
             file.mva.timestamp),
           OutputFile) #  Write timestamp to output file.
close(OutputFile)

#  Remove temporary variables from environment.
rm(file.mva.url, file.mva.dest, file.mva.timestamp, OutputFile)

list.files("./data") #  List files.

#  Load data into global environment.
raw.mva <- read.csv(
  "./data/raw_mva.csv",
  stringsAsFactors=FALSE)

#  Subset the data now to avoid Github upload limit
raw.mva <- subset(raw.mva, Municipality == "ALBANY") 

#  Write the formated file to CSV
write.csv(raw.mva, file = "./data/subset_mva.csv")

source("./scripts/format_mva.R")