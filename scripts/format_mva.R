#  format_mva.R
#
#  Version 0.3.0
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

#  Summarize & review data
print(head(raw.mva,n=3)) #  Review first 3 observations.
print(tail(raw.mva,n=3)) #  Review last 3 observations.

print(summary(raw.mva))

print(str(raw.mva))

print(quantile(raw.mva$Number.of.Vehicles.Involved,na.rm=TRUE))

# Create Data Tables to review.
print(table(raw.mva$Crash.Descriptor,useNA="ifany"))
print(table(raw.mva$Day.of.Week,useNA="ifany"))
print(table(raw.mva$Lighting.Conditions,useNA="ifany"))
print(table(raw.mva$Collision.Type.Descriptor,useNA="ifany"))
print(table(raw.mva$Road.Descriptor,useNA="ifany"))
print(table(raw.mva$Weather.Conditions,useNA="ifany"))
print(table(raw.mva$Traffic.Control.Device,useNA="ifany"))
print(table(raw.mva$Road.Surface.Conditions,useNA="ifany"))
print(table(raw.mva$Event.Descriptor,useNA="ifany"))
print(table(raw.mva$Number.of.Vehicles.Involved,useNA="ifany"))

print(all(colSums(is.na(raw.mva))==0)) # Check for NA values in data.

#  Format the data.
raw.mva$Date <- as.Date(raw.mva$Date, "%m/%d/%Y")
raw.mva$Crash.Descriptor <- as.factor(raw.mva$Crash.Descriptor)
raw.mva$Day.of.Week <- as.factor(raw.mva$Day.of.Week,
  levels=c())

#  Remove Municipality, County.Name, DOT.Reference.Marker.Location
#  GREP (AM, PM)

#  Load data frame to dplyr.
raw.mva <- tbl_df(raw.mva)


mva <- tbl_df(raw.mva)


num2009 <- sum(with(mva, Year == 2009))
num2010 <- sum(with(mva, Year == 2010))
num2011 <- sum(with(mva, Year == 2011))
num2012 <- sum(with(mva, Year == 2012))

mva.2009 <- filter(mva, Year == 2009)
mva.2010 <- filter(mva, Year == 2010)
mva.2011 <- filter(mva, Year == 2011)
mva.2012 <- filter(mva, Year == 2012)

#  Clean up variables.
rm(raw.mva)

#  Unload dplyr package.
detach("package:dplyr", unload=TRUE)
