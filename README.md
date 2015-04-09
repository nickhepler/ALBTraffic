# Traffic Analysis for the City of Albany #
__An exploratory statistical analysis of traffic in the City of Albany, New York__

## Author ##
_Nick Hepler, [University at Albany](http://www.albany.edu), [College of Computing & Information](http://www.albany.edu/cci/)_

## Project Objectives ##
1.  Perform a descriptive analysis of the data.
1.  Identify the thoroughfares that have the most and least number of accidents.
1.  Identify the thoroughfares that have the most and least number of accidents per 1,000 travelers.
1.  Identify the most likely and least times in which a motorist would be involved in a traffic accident.

## Source Data ##
The following data sets were used in the analysis:
### [Annual Average Daily Traffic (AADT): Beginning 1977](https://data.ny.gov/api/views/6amx-2pbv/rows.csv?accessType=DOWNLOAD) ###
Annual Average Daily Traffic (AADT) is an estimate of the average daily traffic along a defined segment of roadway. This value is calculated from short term counts taken along the same section which are then factored to produce the estimate of AADT. Because of this process, the most recent AADT for any given roadway will always be for the previous year. Data is available for all New York State Routes and roads that are part of the Federal Aid System.
### [511 NY Events: Beginning 2010](https://data.ny.gov/api/views/ah74-pg4w/rows.csv?accessType=DOWNLOAD) ###
The 511NY dataset contain historical traffic and transit event information provided by the New York State Department of Transportation (NYSDOT), the New York City Department of Transportation, the New York State Thruway Authority and the Niagara International Transportation Technology Coalition (Buffalo-Niagara Region). The file includes all incidents/accidents, construction projects and special events in New York State that were available on the 511NY traffic and transit map for the time period noted.

## Addendum ##
### Required CRAN Packages ###
The following packages are required in order to perform computations or perform the scripting for the creation of the tidy data set.

### Project Resources ###
* [ACS PUMS Data](http://www2.census.gov/acs2012_1yr/pums/csv_hny.zip)
* [PUMS Data Dictionary](http://www.census.gov/acs/www/Downloads/data_documentation/pums/DataDict/PUMSDataDict12.pdf)
* [Google's R Style Guide](http://google-styleguide.googlecode.com/svn/trunk/Rguide.xml)
