#  format_data_windows.R
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
if (!file.exists("ALBTraffic")) {
  dir.create("ALBTraffic")
}
#  Download AADT data
file.aadt.url <- "https://data.ny.gov/api/views/6amx-2pbv/rows.csv?accessType=DOWNLOAD"
download.file(file.aadt.url,
  destfile = "./ALBTraffic/Annual_Average_Daily_Traffic__AADT___Beginning_1977.csv")
file.aadt.timestamp <- date()
rm(file.aadt.url)

#  Download 511 data
file.511.url <- "https://data.ny.gov/api/views/ah74-pg4w/rows.csv?accessType=DOWNLOAD"
download.file(file.511.url,
  destfile = "./ALBTraffic/511_NY_Events_Beginning_2010.csv", method = "wb")
file.511.timestamp <- date()
rm(file.511.url)

#  Download motor vehicle crash data
file.mva.url <- "https://data.ny.gov/api/views/ah74-pg4w/rows.csv?accessType=DOWNLOAD"
download.file(file.511.url,
  destfile = "./ALBTraffic/Motor_Vehicle_Crashes_-_Case_Information__Beginning_2009", method = "wb")
file.mva.timestamp <- date()
rm(file.mva.url)

list.files("./ALBTraffic")

#  Load data into global environment, REMOVE once tidy data has been scripted
#  and tested.
raw.aadt <- read.csv(
  "~/ALBTraffic/Annual_Average_Daily_Traffic__AADT___Beginning_1977.csv")
raw.ny511 <- read.csv(
  "~/ALBTraffic/511_NY_Events_Beginning_2010.csv")
raw.mva <- read.csv(
  "~/ALBTraffic/Motor_Vehicle_Crashes_-_Case_Information__Beginning_2009.csv")

#  Format the data.
#  Convert Date variable from factor to date data type.
raw.mva$Date <- as.Date(raw.mva$Date, "%m/%d/%Y")

#  Subset the data.
aadt <- subset(raw.aadt, Municipality == "CITY OF ALBANY")
