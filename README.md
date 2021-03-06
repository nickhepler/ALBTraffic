# Albany Traffic Crashes#
__Exploratory Analysis of Motor Vehicle Crashes for the City of Albany, New York__

## Authors ##
_Nick Hepler, [University at Albany](http://www.albany.edu), [College of Computing & Information](http://www.albany.edu/cci/)_

_Julia Turner, [University at Albany](http://www.albany.edu), [College of Computing & Information](http://www.albany.edu/cci/)_

## Project Objectives & Questions Evaluated ##
This source data set is one of four parts of the Motor Vehicle Crash information. The specific data set used was the motor vehicle crash information which contains data related to the date and time of the accident, a description of the accident, road & weather conditions, number of vehicles involved, and other information. Each observation represents a single motorist accident report. NYS Vehicle and Traffic Law requires parties involved in a motor vehicle accident to file a report with police or complete Form MV-104 (Report of Motor Vehicle Accident) if any of the following conditions are met:
* If the property damage of any person is $1,001 or more;
* or if the motor vehicle accident results in an individual being injured or killed.

Utilizing this data set, a descriptive analysis along with hypotheses testing was conducted to answer the following questions:

1.  Perform a descriptive analysis of the data.
1.  Identify the most likely and least times in which a motorist would be involved in a traffic accident.
1.  Identify the most likely and least days in which a motorist would be involved in a traffic accident.
1.  Are motorists are more likely to be involved in a motor vehicle accident during evening rush hour than any other time of day.

## Methodology ##
The source data was obtained through the New York State Open Data website furnished by the State of New York, Office if Information Technology Services. The original data can be found on the New York State Open Data website linked in the Source Data section below.

## Data ##
### Source Data ###
The following data set was used in the analysis:
#### [Motor Vehicle Crashes - Case Information: Beginning 2009](https://data.ny.gov/api/views/e8ky-4vqe/rows.csv?accessType=DOWNLOAD) ####
Motor Vehicle Crashes - Case Information is one of four data sets related to motor vehicle crashes. The data set contains location information along with the date & time of accident, the type of accident, lighting and road conditions, and other variables. The data is provided by law enforcement agencies along with motorists reporting motor vehicle accidents to the Department of Motor Vehicles.


### Formatted Data ###
#### Summary ####
In order to ensure that the source data can be easily shared, computed, and analyzed, the data was processed and formatted using the R language and environment for statistical computing and graphics. The following is a brief summary of the changes made to produce the final formatted files.

1.  Data was downloaded, subset (to avoid GitHub upload limit), and saved to a new CSV file. To replicate, Windows users should user this [script](https://github.com/nickhepler/ALBTraffic/blob/master/scripts/download_mva_windows.R) whiles Linux & Mac users should use this [script](https://github.com/nickhepler/ALBTraffic/blob/master/scripts/download_mva_linux.R)

1.  The data was then sourced through the [format script](https://github.com/nickhepler/ALBTraffic/blob/master/scripts/format_mva.R) to perform a cursory review and format the data in order to complete statistical analysis.

## Results ##

## Addendum ##
### Required CRAN Packages ###
The following packages are required in order to perform computations or perform the scripting for the creation of the tidy data set.
* [`dplyr`: A Grammar of Data Manipulation](http://cran.r-project.org/web/packages/dplyr/index.html)
* [`chron`: Chronological objects which can handle dates and times](http://cran.r-project.org/web/packages/chron/index.html)

### Project Resources ###
#### Source Data Dictionaries ####
* [Motor Vehicle Crashes - Case Information Data Dictionary](https://data.ny.gov/api/views/e8ky-4vqe/files/qCadoVwr91VeZzvGCaLSPcw_35aTonddiFq9X_ztziY?download=true&filename=NYSDMV_CRASH%20CASE%20FILE_Data%20Dictionary.pdf)

#### Material References ####
* [Google's R Style Guide](http://google-styleguide.googlecode.com/svn/trunk/Rguide.xml)
* [Coursera :: Getting and Cleaning Data](https://www.coursera.org/course/getdata)
