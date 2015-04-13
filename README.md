# Traffic Analysis for the City of Albany #
__An exploratory statistical analysis of traffic in the City of Albany, New York__

## Author ##
_Nick Hepler, [University at Albany](http://www.albany.edu), [College of Computing & Information](http://www.albany.edu/cci/)_

## Project Objectives ##
1.  Perform a descriptive analysis of the data.
1.  Identify the most likely and least times in which a motorist would be involved in a traffic accident.
1.  Identify the most likely and least days in which a motorist would be involved in a traffic accident.
1.  Identify the thoroughfares that have the most and least number of accidents.
1.  Identify the thoroughfares that have the most and least number of accidents per 1,000 travelers.


## Methodology ##

## Data ##
### Source Data ###
The following data sets were used in the analysis:
#### [Annual Average Daily Traffic (AADT): Beginning 1977](https://data.ny.gov/api/views/6amx-2pbv/rows.csv?accessType=DOWNLOAD) ####
Annual Average Daily Traffic (AADT) is an estimate of the average daily traffic along a defined segment of roadway. This value is calculated from short term counts taken along the same section which are then factored to produce the estimate of AADT. Because of this process, the most recent AADT for any given roadway will always be for the previous year. Data is available for all New York State Routes and roads that are part of the Federal Aid System.

#### [Motor Vehicle Crashes - Case Information: Beginning 2009](https://data.ny.gov/api/views/e8ky-4vqe/rows.csv?accessType=DOWNLOAD) ####
Motor Vehicle Crashes - Case Information is one of four data sets related to motor vehicle crashes. The data set contains location information along with the date & time of accident, the type of accident, lighting and road conditions, and other variables. The data is provided by law enforcement agencies along with motorists reporting motor vehicle accidents to the Department of Motor Vehicles.

#### [511 NY Events: Beginning 2010](https://data.ny.gov/api/views/ah74-pg4w/rows.csv?accessType=DOWNLOAD) ####
The 511NY dataset contain historical traffic and transit event information provided by the New York State Department of Transportation (NYSDOT), the New York City Department of Transportation, the New York State Thruway Authority and the Niagara International Transportation Technology Coalition (Buffalo-Niagara Region). The file includes all incidents/accidents, construction projects and special events in New York State that were available on the 511NY traffic and transit map for the time period noted.

### Formatted Data ###
#### Summary ####
In order to ensure that the source data can be easily shared, computed, and analyzed, the data was processed and formatted using the R language and environment for statistical computing and graphics. The following is a brief summary of the changes made to produce the final formatted files. The complete R script is available [here].

## Results ##

## Addendum ##
### Required CRAN Packages ###
The following packages are required in order to perform computations or perform the scripting for the creation of the tidy data set.
* ['dplyr': A Grammar of Data Manipulation](http://cran.r-project.org/web/packages/dplyr/index.html)

### Project Resources ###
#### Source Data Dictionaries ####
* [Annual Average Daily Traffic (AADT) Data Dictionary](https://data.ny.gov/api/assets/69759D78-79A7-4360-92D3-1ABAC3E241DA?download=true)
* [511 NY Events Data Dictionary](https://data.ny.gov/api/assets/2B787318-45C3-4156-A0BB-F4B6F63B5EE0?download=true)
* [Motor Vehicle Crashes - Case Information Data Dictionary](https://data.ny.gov/api/views/e8ky-4vqe/files/qCadoVwr91VeZzvGCaLSPcw_35aTonddiFq9X_ztziY?download=true&filename=NYSDMV_CRASH%20CASE%20FILE_Data%20Dictionary.pdf)

#### Material References ####
* [Google's R Style Guide](http://google-styleguide.googlecode.com/svn/trunk/Rguide.xml)
