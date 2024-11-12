 /**************************************************************************************

Wirtten by: Ida
Project: DEEP (Conflict, climate, and Covid-19 in Tanzania)
Date: 17/09/2024
Purpose: Indicator creation
Comments: Created the climatic variables, collapsed at HH level.

**************************************************************************************/

******************************************************************************
******************************* YEAR 1  **************************************
******************************************************************************

* Load data file that includes processed flood variables (in R) for Year 1 geocoordinates 
use "C:\Users\idabr\OneDrive - Oxford Policy Management Limited\DEEP Multiple Crises Tanzania\Data\Household\Geocoordinates Vidya\Processed with flood\geovar1_flood.dta", clear 

* Rename longitue and latitude before merging with drought variables
rename  lon_dd_mod lon_modified
rename  lat_dd_mod lat_modified

* Merge with SPEI values for Y1 coordinates

merge m:m lon_modified lat_modified using "C:\Users\idabr\OneDrive - Oxford Policy Management Limited\DEEP Multiple Crises Tanzania\Data\Household\Merged with climate data\HH.Geovariables_Y1_SPEI.dta"
 
* Rename longitude and latitude again
rename  lon_modified lon_dd_mod
rename  lat_modified lat_dd_mod 

* Drop unnecessary variables
drop X Y _merge
drop SPEI_2000 SPEI_2001 SPEI_2002 SPEI_2003 SPEI_2004 SPEI_2005 SPEI_2006 

****** A. Drought *******
** Version 1: Drought conditions defined as SPEI < -1.5 **

local spei SPEI_2007 SPEI_2008 SPEI_2009 SPEI_2010 SPEI_2011 SPEI_2012 SPEI_2013 SPEI_2014 SPEI_2015 SPEI_2016 SPEI_2017 SPEI_2018 SPEI_2019 SPEI_2020

* Generate a dummy for whether there was a drought in a particular year 
foreach var in `spei' {
	gen dr_`var'_v1 = 0 
	replace dr_`var'_v1 = 1 if `var' < -1.5
	label var dr_`var'_v1 "Dummy for drought (SPEI < -1.5) in a specific year "
	
}

local spei SPEI_2007 SPEI_2008 SPEI_2009 SPEI_2010 SPEI_2011 SPEI_2012 SPEI_2013 SPEI_2014 SPEI_2015 SPEI_2016 SPEI_2017 SPEI_2018 SPEI_2019 SPEI_2020

* Version 2: Drought conditions defined as SPEI < -1

* Generate a dummy for whether there was a drought in a particular year 
foreach var in `spei' {
	gen dr_`var'_v2 = 0 
	replace dr_`var'_v2 = 1 if `var' < -1
	label var dr_`var'_v2 "Dummy for drought (SPEI < -1) in a specific year "
	
}

local spei SPEI_2007 SPEI_2008 SPEI_2009 SPEI_2010 SPEI_2011 SPEI_2012 SPEI_2013 SPEI_2014 SPEI_2015 SPEI_2016 SPEI_2017 SPEI_2018 SPEI_2019 SPEI_2020

* Version 3: Drought conditions defined as SPEI < -0.5
foreach var in `spei' {
	gen dr_`var'_v3 = 0 
	replace dr_`var'_v3 = 1 if `var' < -1
	label var dr_`var'_v3 "Dummy for drought (SPEI < -0.5) in a specific year "
	
}

* Save ready data file 
save "C:\Users\idabr\OneDrive - Oxford Policy Management Limited\DEEP Multiple Crises Tanzania\Data\Household\Geocoordinates Vidya\Processed with drought and flood\geovar1_climate.dta", replace 

******************************************************************************
******************************* YEAR 2  **************************************
******************************************************************************

* Load data file that includes processed flood variables (in R) for Year 2 geocoordinates 
use "C:\Users\idabr\OneDrive - Oxford Policy Management Limited\DEEP Multiple Crises Tanzania\Data\Household\Geocoordinates Vidya\Processed with flood\geovar2_flood.dta", clear

* Rename longitue and latitude before merging with drought variables
rename  lon_dd_mod lon_modified
rename  lat_dd_mod lat_modified

* Merge with SPEI values for Y1 coordinates

merge m:m lon_modified lat_modified using "C:\Users\idabr\OneDrive - Oxford Policy Management Limited\DEEP Multiple Crises Tanzania\Data\Household\Merged with climate data\HH.Geovariables_Y2_SPEI.dta"

/*
 Result                      Number of obs
    -----------------------------------------
    Not matched                             0
    Matched                             3,917  (_merge==3)
    -----------------------------------------

	*/

 
* Rename longitude and latitude again
rename  lon_modified lon_dd_mod
rename  lat_modified lat_dd_mod 

* Drop unnecessary variables
drop X Y _merge
drop SPEI_2000 SPEI_2001 SPEI_2002 SPEI_2003 SPEI_2004 SPEI_2005 SPEI_2006 

****** A. Drought *******
** Version 1: Drought conditions defined as SPEI < -1.5 **

local spei SPEI_2007 SPEI_2008 SPEI_2009 SPEI_2010 SPEI_2011 SPEI_2012 SPEI_2013 SPEI_2014 SPEI_2015 SPEI_2016 SPEI_2017 SPEI_2018 SPEI_2019 SPEI_2020

* Generate a dummy for whether there was a drought in a particular year 
foreach var in `spei' {
	gen dr_`var'_v1 = 0 
	replace dr_`var'_v1 = 1 if `var' < -1.5
	label var dr_`var'_v1 "Dummy for drought (SPEI < -1.5) in a specific year "
	
}

local spei SPEI_2007 SPEI_2008 SPEI_2009 SPEI_2010 SPEI_2011 SPEI_2012 SPEI_2013 SPEI_2014 SPEI_2015 SPEI_2016 SPEI_2017 SPEI_2018 SPEI_2019 SPEI_2020

* Version 2: Drought conditions defined as SPEI < -1

* Generate a dummy for whether there was a drought in a particular year 
foreach var in `spei' {
	gen dr_`var'_v2 = 0 
	replace dr_`var'_v2 = 1 if `var' < -1
	label var dr_`var'_v2 "Dummy for drought (SPEI < -1) in a specific year "
	
}

local spei SPEI_2007 SPEI_2008 SPEI_2009 SPEI_2010 SPEI_2011 SPEI_2012 SPEI_2013 SPEI_2014 SPEI_2015 SPEI_2016 SPEI_2017 SPEI_2018 SPEI_2019 SPEI_2020

* Version 3: Drought conditions defined as SPEI < -0.5
foreach var in `spei' {
	gen dr_`var'_v3 = 0 
	replace dr_`var'_v3 = 1 if `var' < -1
	label var dr_`var'_v3 "Dummy for drought (SPEI < -0.5) in a specific year "
	
}

* Save ready data file 
save "C:\Users\idabr\OneDrive - Oxford Policy Management Limited\DEEP Multiple Crises Tanzania\Data\Household\Geocoordinates Vidya\Processed with drought and flood\geovar2_climate.dta", replace 

******************************************************************************
******************************* YEAR 3  **************************************
******************************************************************************

* Load data file that includes processed flood variables (in R) for Year 2 geocoordinates 
use "C:\Users\idabr\OneDrive - Oxford Policy Management Limited\DEEP Multiple Crises Tanzania\Data\Household\Geocoordinates Vidya\Processed with flood\geovar3_flood.dta", clear

* Merge with SPEI values for Y1 coordinates

merge m:m lon_dd_mod lat_dd_mod using "C:\Users\idabr\OneDrive - Oxford Policy Management Limited\DEEP Multiple Crises Tanzania\Data\Household\Merged with climate data\HouseholdGeovars_Y3_SPEI.dta"

/*
Result                      Number of obs
    -----------------------------------------
    Not matched                             0
    Matched                             4,988  (_merge==3)
    -----------------------------------------


	*/

* Drop unnecessary variables
drop X Y _merge
drop SPEI_2000 SPEI_2001 SPEI_2002 SPEI_2003 SPEI_2004 SPEI_2005 SPEI_2006 

****** A. Drought *******
** Version 1: Drought conditions defined as SPEI < -1.5 **

local spei SPEI_2007 SPEI_2008 SPEI_2009 SPEI_2010 SPEI_2011 SPEI_2012 SPEI_2013 SPEI_2014 SPEI_2015 SPEI_2016 SPEI_2017 SPEI_2018 SPEI_2019 SPEI_2020

* Generate a dummy for whether there was a drought in a particular year 
foreach var in `spei' {
	gen dr_`var'_v1 = 0 
	replace dr_`var'_v1 = 1 if `var' < -1.5
	label var dr_`var'_v1 "Dummy for drought (SPEI < -1.5) in a specific year "
	
}

local spei SPEI_2007 SPEI_2008 SPEI_2009 SPEI_2010 SPEI_2011 SPEI_2012 SPEI_2013 SPEI_2014 SPEI_2015 SPEI_2016 SPEI_2017 SPEI_2018 SPEI_2019 SPEI_2020

* Version 2: Drought conditions defined as SPEI < -1

* Generate a dummy for whether there was a drought in a particular year 
foreach var in `spei' {
	gen dr_`var'_v2 = 0 
	replace dr_`var'_v2 = 1 if `var' < -1
	label var dr_`var'_v2 "Dummy for drought (SPEI < -1) in a specific year "
	
}

local spei SPEI_2007 SPEI_2008 SPEI_2009 SPEI_2010 SPEI_2011 SPEI_2012 SPEI_2013 SPEI_2014 SPEI_2015 SPEI_2016 SPEI_2017 SPEI_2018 SPEI_2019 SPEI_2020

* Version 3: Drought conditions defined as SPEI < -0.5
foreach var in `spei' {
	gen dr_`var'_v3 = 0 
	replace dr_`var'_v3 = 1 if `var' < -1
	label var dr_`var'_v3 "Dummy for drought (SPEI < -0.5) in a specific year "
	
}

* Save ready data file 
save "C:\Users\idabr\OneDrive - Oxford Policy Management Limited\DEEP Multiple Crises Tanzania\Data\Household\Geocoordinates Vidya\Processed with drought and flood\geovar3_climate.dta", replace 
