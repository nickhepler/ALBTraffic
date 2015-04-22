#  format_data_linux.R
#
#  Version 0.0.1
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
library("dplyr")

if (!file.exists("data")) {
  dir.create("data")
}

OutputFile <- file("output.txt") #  Create output file.

#  Set URL and destination of file to download
file.mva.url <- "https://data.ny.gov/api/views/e8ky-4vqe/rows.csv?accessType=DOWNLOAD"
file.mva.dest <- "./data/Motor_Vehicle_Crashes_-_Case_Information__Beginning_2009.csv"

download.file(file.mva.url,
              destfile = file.mva.dest, 
              method = "curl") #  Download motor vehicle crash data

file.mva.timestamp <- date() #  Write timestamp

writeLines(c("Downloaded AADT data :: ",
           file.mva.timestamp),
           OutputFile) #  Write timestamp to output file.
close(OutputFile)

#  Remove temporary variables from environment.
rm(file.mva.url, file.mva.dest, file.mva.timestamp)

list.files("./data") #  List files.

#  Load data into global environment, REMOVE once tidy data has been scripted
#  and tested.
raw.mva <- read.csv(
  "./data/Motor_Vehicle_Crashes_-_Case_Information__Beginning_2009.csv",
  stringsAsFactors=FALSE)

#  Format the data.
#  Convert Date variable from factor to date data type.
raw.mva$Date <- as.Date(raw.mva$Date, "%m/%d/%Y")
raw.mva$Crash.Descriptor <- as.factor(raw.mva$Crash.Descriptor)
raw.mva$Day.of.Week <- as.factor(raw.mva$Day.of.Week)
raw.mva <- subset(raw.mva, Municipality == "ALBANY")

#  Subset the data.
mva <- tbl_df(raw.mva)