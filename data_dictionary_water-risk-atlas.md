# Aqueduct 4.0 Water Risk Atlas Data Dictionary

Creative Commons 4.0 License through December 31, 2023.

See [Aqueduct 4.0 Technical Note](https://www.wri.org/publication/aqueduct-40) for more information on the data and methodology.

Suggested Citation: S. Kuzma, M. Bierkens, S. Lakshman, et. al. 2023. “Aqueduct 4.0: Updated Decision-
Relevant Global Water Risk Indicators.” Technical Note. Washington, DC: World Resources Institute. Forthcoming.  



# Data Dictionary

The [Aqueduct 4.0 data download](https://www.wri.org/data/aqueduct-global-maps-40-data) features multiple water-related risk datasets:

1. Baseline Annual
2. Baseline Monthly
3. Future Projections

## Baseline Annual

This dataset contains the main Aqueduct framework--baseline annual data. This is the dataset that most users are interested in.

The columns (attributes or fields) in the baseline annual results are grouped into "identifiers", "indicators" and "grouped water risk". 

### Identifiers:  
| Column Name     | Data Type | Description |
|------------------|-------------|-----|
|**string_id**|(string)| contains a unique string for each geometry. Geometries are the union of hydrological basins, provinces and groundwater aquifers. The string_id is a combination of pfaf_id-gid_1-aqid. See the description of those columns.  |
|**aq30_id**|(integer)| unique identifier in numeric format.|  
|**pfaf_id**| (integer)| six digit Pfafstetter code for the [hydrological basins](https://hydrosheds.org/page/hydrobasins).| 
|**gid_1**| (string)| identifier for sub-national units based on the [GADM](https://gadm.org/data.html) dataset. It contains the Iso A3 country code, followed by numeric values separated by underscores for each sub-national unit.|   
|**aqid**| (integer)| identifier for groundwater Aquifers based on WHYMAP.|
|**gid_0** | (string)| ISO A3 country code based on [GADM](https://gadm.org/data.html).|   
|**name_0**| (string)| National or political entity name based on [GADM](https://gadm.org/data.html).|    
|**name_1**| (string)| Sub-national or political entity name based on [GADM](https://gadm.org/data.html).|  
|**area_km2**| (double)| area of the geometry in km2 (union of sub-basin, province and groundwater aquifer).|  

### Indicators: 

For each of the 13 indicators the columns contain the indicator abbreviation plus the type {indicator}\_{type}, e.g.:  
"bws_raw" is baseline water stress, raw value. The indicator abbreviations and types are listed below.  

#### Physical risk quantity: 
| Short | Full                              | Last Update   |
|-------|-----------------------------------|---------------|
|**bws**| Baseline water stress             |  Aqueduct 4.0 |
|**bwd**| Baseline water depletion (updated)|  Aqueduct 4.0 |  
|**iav**| Interannual variability (updated) |  Aqueduct 4.0 | 
|**sev**| Seasonal variability (updated)    |  Aqueduct 4.0 |  
|**gtd**| Groundwater table decline         |  Aqueduct 3.0 |  
|**rfr**| Riverine flood risk               |  Aqueduct 3.0 |  
|**cfr**| Coastal flood risk                |  Aqueduct 3.0 |  
|**drr**| Drought risk                      |  Aqueduct 3.0 |

#### Physical risk quality:
| Short    | Full                         | Last Update   |
|----------|------------------------------|---------------|
|**ucw**| Untreated connected wastewater  |  Aqueduct 3.0 |  
|**cep**| Coastal eutrophication potential|  Aqueduct 3.0 | 

#### Regulatory and reputational risk:
| Short | Full                               | Last Update   |
|-------|------------------------------------|---------------|
|**udw**| Unimproved/no drinking water       |  Aqueduct 3.0 |     
|**usa**| Unimproved/no sanitation           |  Aqueduct 3.0 |   
|**rri**| Peak RepRisk country ESG risk index|  Aqueduct 3.0 |   

### Types:  
| Type       |   Data Type | Description                                                      |
|------------|-------------|------------------------------------------------------------------|
|**\_raw**   | (double)    | raw value. Units depend on the indicator. See the technical note.|  
|**\_score** | (double)    | each indicator is mapped to a [0-5] scale.|  
|**\_label** | (string)    | A label explaining the category of the indicator including threshold. e.g. "Extremely High (more than 1 in 100)".|  
|**\_cat**   | (integer)   | integer for each category [-1,4], can be used for visuals.|  

### Grouped water risk

See the technical note for a description of aggregating the 13 indicators into sub-groups and an overall water risk score using the composite index approach. The grouped water risk scores use the follwing format:

w_awr_{weightingscheme}\_{group}\_{type}  

w_awr, stand for weighted aggregated water risk. Mainly used to keep them separate from the remaining indicators.    

e.g. w_awr_min_rrr_score is the aggregated score using the mining weighting scheme for the regulatory and reputational risk group.


#### Weighting Scheme
| Short  | Full |
|-------------|-----|
|**def**| Default | 
|**agr**| Agriculture |  
|**che**| Chemicals  |
|**con**| Construction Materials  |
|**elp**| Electric Power  |
|**fnb**| Food & Beverage  |
|**min**| Mining  |
|**ong**| Oil & Gas |  
|**smc**| Semiconductor |  
|**tex**| Textile  |

#### Groups
| Short  | Full |
|-------------|-----|
|**qan**| Physical risk quantity  |
|**qal**| Physical risk quality | 
|**rrr**| Regulatory and reputational risk |
|**tot**| Total, Overall water risk. |

#### Types

| Type   | Data Type | Description |
|------------------|-------------|-----|
|**\_raw**| (double)| raw value on 0-5 scale. Result of weighted composite approach|  
|**\_score**| (double) | score [0-5], result of applying a quantile approach to raw values. See below |  
|**\_label**| (string) | A label explaining the category of the grouped water risk.|  
|**\_cat**| (integer)| integer for each category [-1,4], can be used for visuals.|  
|**\_weight_fraction**| (double)| the fraction [0-1] of the group towards the overall water risk score. NoData is excluded from the weights and therefore the fractions can be lower than 1 depending on data availability. See the technical note for the weights per industy and indicator. |


#### Quantile linear interpolation. 
Aggregating multiple scores will change the distribution of the data. Therefore we calculate the quantiles and use linear interpolation to remap the raw values to 0-5 scores. The quantiles can be obtained from the data but are also listed below. 

| percentile | score | quantity | quality | regulatory and reputational | overall |
|------------|-------|----------|---------|-----------------------------|---------|
| 0          | 0     | 0.00     | 0.00    | 0.00                        | 0.00    |
| 0.2        | 1     | 0.72     | 1.45    | 0.30                        | 1.01    |
| 0.4        | 2     | 1.09     | 2.20    | 1.39                        | 1.61    |
| 0.6        | 3     | 1.60     | 2.92    | 2.81                        | 2.10    |
| 0.8        | 4     | 2.34     | 3.83    | 3.93                        | 2.68    |
| 1          | 5     | 5.00     | 5.00    | 5.00                        | 5.00    |

## Baseline Monthly
Only 3 of the 13 annual indicators are also available at the monthly time step. All 3 are based on the PCR-GLOBWB 2 outputs. The columns (attributes or fields) in the baseline monthly results are grouped into "identifiers" and "indicators". 


### Identifiers:  

| Column Name     | Data Type | Description |
|-----------------------|-------------|-----|
|**pfaf_id**| (integer)| six digit Pfafstetter code for the [hydrological basins](https://hydrosheds.org/page/hydrobasins).| 
|**month**|(integer)| month of the year.|  

### Indicators: 
The columns contain the indicator abbreviation plus the month plus the type {indicator}\_{month}\_{type}, e.g.:  
"bws_01_raw" is baseline water stress, raw value for January. The indicator abbreviations and types are listed below.  

| Short | Full                              | Last Update   |
|-------|-----------------------------------|---------------|
|**bws**| Baseline water stress (updated)   |  Aqueduct 4.0 | 
|**bwd**| Baseline water depletion (updated)|  Aqueduct 4.0 | 
|**iav**| Interannual variability (updated) |  Aqueduct 4.0 | 

### Types:  
| Type   | Data Type | Description |
|------------------|-------------|-----|
|**\_raw**| (double) | raw value. Units depend on the indicator. See the technical note.|  
|**\_score**| (double) | each indicator is mapped to a [0-5] scale.|  
|**\_label**| (string) | A label explaining the category of the indicator including threshold. e.g. "Extremely High (more than 1 in 100)".|  
|**\_cat**| (integer) | integer for each category [-1,4], can be used for visuals.|  


## Future Annual

This dataset contains new future projections of water using the CMIP6 climate forcings. The future projections used the same global hydrological model (PCR-GLOBWB 2) as the baseline, so the two datasets can be used in tandem.

The columns (attributes or fields) in the annual future projections are grouped into "identifiers", "scenarios", "years", "indicators", "values", and "types". 

### Identifiers:  
| Column Name     | Data Type | Description |
|------------------|-------------|-----|
|**pfaf_id**| (integer)| six digit Pfafstetter code for the [hydrological basins](https://hydrosheds.org/page/hydrobasins).| 

### Scenarios: 

We provide 3 future scenarios of climate and socioeconomic conditions:
 
| Short | Full              | Pathways      | Description                                     |
|-------|-------------------|---------------|-------------------------------------------------|
|**bau**| Business as Usual | SSP 3 RCP 7.0 | Middle of the road                              |
|**opt**| Optimistic        | SSP 1 RCP 2.6 | Carbon emissions are cut and society is healthy |
|**pes**| Pessimistic       | SSP 5 RCP 8.5 | Carbon emissions rise and society is fragmented |

### Years: 
 
| Short  | Full | Period   |
---------|------|----------|
|**30**  | 2030 | 2015-2045|
|**50**  | 2050 | 2035-2065|
|**80**  | 2080 | 2065-2095|

### Indicators: 

Future projections includes 4 risk indicators, as well as projected supply and demand. The abbreviations and types are listed below.  

| Short| Full                          | Last Update  |
|------|-------------------------------|--------------|
|**ba**| Available blue water(cm/year) | Aqueduct 4.0 | 
|**ww**| Gross water demand (cm/year)  | Aqueduct 4.0 |  
|**ws**| Water stress                  | Aqueduct 4.0 |   
|**wd**| Baseline water depletion      | Aqueduct 4.0 |   
|**iv**| Interannual variability       | Aqueduct 4.0 |   
|**sv**| Seasonal variability          | Aqueduct 4.0 |   

### Value Type: 
 
| Short | Full                                    | 
|-------|-----------------------------------------|
|**\_x_**  | Absolute value (median of the 5 GCMs)|

### Types:  
| Short | Full     | Data Type | Description |
|-------|----------|-----------|----------|
|**\_r**| raw      | (double)  | raw value. Units depend on the indicator. See the technical note.|  
|**\_s**| score    | (double)  | each indicator is mapped to a [0-5] scale.|  
|**\_l**| label    | (string)  | A label explaining the category of the indicator including threshold. e.g. "Extremely High (more than 1 in 100)".|  
|**\_c**| category | (integer) | integer for each category [-1,4], can be used for visuals.|  

For example the layer {bau30_ws_x_r} is "projected raw water stress by the year 2030 under a business as usual (ssp2 rcp70) scenario"	 
