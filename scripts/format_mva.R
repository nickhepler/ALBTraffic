#  format_mva.R
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
library("dplyr")

#  Format the data.
raw.mva$Date <- as.Date(raw.mva$Date, "%m/%d/%Y")
raw.mva$Crash.Descriptor <- as.factor(raw.mva$Crash.Descriptor)
raw.mva$Day.of.Week <- as.factor(raw.mva$Day.of.Week)

#  Load data frame to dplyr.
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