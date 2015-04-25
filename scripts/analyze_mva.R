#  analyze_mva.R
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

#  Create Frequency Distribution of Crash Descriptor variable
Crash.Descriptor.table <- select(mva, Crash.Descriptor)
Crash.Descriptor.freq <- table(Crash.Descriptor.table)
Crash.Descriptor.relfreq <- Crash.Descriptor.freq / nrow(mva)
barplot(Crash.Descriptor.freq,
        cex.names=0.8,
        main="Accidents by Crash Descriptor",
        xlab="Crash Descriptor", 
        ylab="Frequency",
        names.arg=c("Property Damage", "Injury",
                    "Property Damage & Injury", "Fatal"),
        ylim=c(0, 10000))

#  Create Frequency Distribution of Day of Week variable
Day.of.Week.table <- select(mva, Day.of.Week)
Day.of.Week.freq <- table(Day.of.Week.table)
Day.of.Week.relfreq <- Day.of.Week.freq / nrow(mva)
barplot(Day.of.Week.freq,
        cex.names=0.7,
        main="Accidents by Day of Week",
        xlab="Day", 
        ylab="Frequency",
        ylim=c(0, 2400))

num2009 <- sum(with(mva, Year == 2009))
num2010 <- sum(with(mva, Year == 2010))
num2011 <- sum(with(mva, Year == 2011))
num2012 <- sum(with(mva, Year == 2012))

mva.2009 <- filter(mva, Year == 2009)
mva.2010 <- filter(mva, Year == 2010)
mva.2011 <- filter(mva, Year == 2011)
mva.2012 <- filter(mva, Year == 2012)

#  Unload dplyr package.
detach("package:dplyr", unload=TRUE)