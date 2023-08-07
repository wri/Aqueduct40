# Aqueduct 4.0 Country Rankings Data Dictionary

This dataset is licensed in accordance with the terms of  a creative commons license ([CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)) through December 31, 2023 . Any use after that date will require a new license from WRI, information about which will be posted on this website prior to expiration of the prior license. 

Suggested Citation: Kuzma, S., M.F.P. Bierkens, S. Lakshman, T. Luo, L. Saccoccia, E. H. Sutanudjaja, and R. Van Beek. 2023. “Aqueduct 4.0: Updated decision-relevant global water risk indicators.” Technical Note. Washington, DC: World Resources Institute. Available online at: [doi.org/10.46830/writn.23.00061](https://doi.org/10.46830/writn.23.00061).

*See Chapter 5 for more information on the data and methodology.*


# Data Dictionary

The [Aqueduct 4.0 country rankings data download]( https://www.wri.org/data/aqueduct-40-country-rankings) features multiple datasets:

1. [Country Rankings Baseline](https://github.com/wri/Aqueduct40/blob/master/data_dictionary_country-rankings.md#country-baseline)
2. [Provincial Rankings Baseline](https://github.com/wri/Aqueduct40/blob/master/data_dictionary_country-rankings.md#provincial-baseline)
3. [Country Rankings Future](https://github.com/wri/Aqueduct40/blob/master/data_dictionary_country-rankings.md#country-future)
2. [Provincial Rankings Future](https://github.com/wri/Aqueduct40/blob/master/data_dictionary_country-rankings.md#provincial-future)

## Brief Methodology
Aqueduct™ indicators are transformed from the sub-basin level to administrative borders a weighted average approach. The methodology requires three inputs: (1) gridded weights to define where water is being used, (2) an Aqueduct™ indicator score to rescale, and (3) target regions (country and provincial borders). 
### Gridded weights
For baseline water stress and drought risk, we used sectoral and total gross water demand as weights (see [Aqueduct 4.0 Technical Note](https://www.wri.org/publication/aqueduct-40)). The gross demand data is used to indicate where human need for water is greatest—it is also where socioeconomic dependency for water is most critical. Areas with higher water demand will have more influence over the final aggregated score. We use sectoral demand in addition to total demand to understand water risk as it pertains to specific actors (like the agricultural sector’s exposure to water risk).  The sectors include: domestic, industrial, irrigation and livestock. 

For riverine flood risk, gridded population is used as weights. See the [Aqueduct Floods]( https://www.wri.org/research/aqueduct-floods-methodology) reference for more info.

| Source indicator      | Total gross demand     | Domestic demand     | Industrial demand     | Irrigation demand     | Livestock demand     | Population | 
|-----------------------|------------------------|---------------------------|-----------------------------|-----------------------------|----------------------------|------------| 
| Baseline water stress | :white_check_mark:     | :white_check_mark:        | :white_check_mark:          |  :white_check_mark:         |  :white_check_mark:        |            | 
| Drought risk          | :white_check_mark:     | :white_check_mark:        | :white_check_mark:          |  :white_check_mark:         |  :white_check_mark:        |            | 
| Riverine flood risk   |                        |                           |                             |                             |                            | :white_check_mark:| 

### Indicators
See Aqueduct 4.0 [metadata](https://github.com/wri/Aqueduct40/blob/master/data_dictionary_water-risk-atlas.md) for a description of these indicators and the methodology.
1.	Water stress
2.	Drought risk
3.	Riverine flood risk

### Target regions

Aqueduct™ data is aggregated up to two spatial units: countries and sub-national units (i.e., provinces). Sub national unites can be states, provinces, prefectures etc. depending on the country. We used [GADM version 3.6](https://gadm.org/download_country36.html) borders for level 0 (country) and level 1 (provincial).  

## Country Baseline

This dataset contains select Aqueduct™ indicators aggregated to the administrative level 0—country level. 

The data can be filtered using the following fields: "identifiers", "indicators", and "weights. 

Score is the aggregated water risk value in numeric form. Label translates the score into a text-based risk category. Score_ranked can be used to rank the locations per indicator and weight, where 1 represents the most severe risk. 


### Identifiers:  
| Column Name     | Data Type | Description |
|------------------|-------------|-----|
|**name_0**| (string)| National or political entity name based on [GADM](https://gadm.org/data.html).| 
|**gid_0** | (string)| ISO A3 country code based on [GADM](https://gadm.org/data.html).|   
|**un_region**| string | name of UN region |
| **wb_region** | string | name of World Bank region |   

### Indicators: 
| Short | Full                              | Last Update   |
|-------|-----------------------------------|---------------|
|**bws**| Baseline water stress             |  Aqueduct 4.0 |
|**rfr**| Riverine flood risk               |  Aqueduct 3.0 |  
|**drr**| Drought risk                      |  Aqueduct 3.0 |

### Weights
| Short    | Full |
|-------------|-----|
|**tot**| Total gross withdrawal|  
|**dom**| Domestic gross withdrawal|  
|**ind**| Industrial gross withdrawal|  
|**irr**| Irrigation gross withdrawal|  
|**liv**| Livestock gross withdrawal|  
|**pop**| Population|  
|**one**| Ones, i.e. no weights |

## Provincial Baseline

This dataset contains select Aqueduct™ indicators aggregated to the administrative level 1—provincial level. 

The data can be filtered using the following fields: "identifiers", "indicators", and "weights. 

Score is the aggregated water risk value in numeric form. Label translates the score into a text-based risk category. Score_ranked can be used to rank the locations per indicator and weight, where 1 represents the most severe risk. 


### Identifiers:  
| Column Name     | Data Type | Description |
|------------------|-------------|-----|
|**name_0**| (string)| National or political entity name based on [GADM](https://gadm.org/data.html).| 
|**name_1**| (string)| Sub-national or political entity name based on [GADM](https://gadm.org/data.html).|  
|**gid_0** | (string)| ISO A3 country code based on [GADM](https://gadm.org/data.html).| 
|**gid_1**| (string)| identifier for sub-national units based on the [GADM](https://gadm.org/data.html) dataset. It contains the Iso A3 country code, followed by numeric values separated by underscores for each sub-national unit.|     
|**un_region**| string | name of UN region |
| **wb_region** | string | name of World Bank region |   

### Indicators: 
| Short | Full                              | Last Update   |
|-------|-----------------------------------|---------------|
|**bws**| Baseline water stress             |  Aqueduct 4.0 |
|**rfr**| Riverine flood risk               |  Aqueduct 3.0 |  
|**drr**| Drought risk                      |  Aqueduct 3.0 |

### Weights
| Short    | Full |
|-------------|-----|
|**tot**| Total gross withdrawal|  
|**dom**| Domestic gross withdrawal|  
|**ind**| Industrial gross withdrawal|  
|**irr**| Irrigation gross withdrawal|  
|**liv**| Livestock gross withdrawal|  
|**pop**| Population|  
|**one**| Ones, i.e. no weights |

## Country Future

This dataset contains select projected Aqueduct™ indicators aggregated to the administrative level 0—country level. 

The data can be filtered using the following fields: "identifiers", "indicators", "scenarios", "years", and "weights. 

Score is the aggregated water risk value in numeric form. Label translates the score into a text-based risk category. Score_ranked can be used to rank the locations per indicator and weight, where 1 represents the most severe risk. 


### Identifiers:  
| Column Name     | Data Type | Description |
|------------------|-------------|-----|
|**name_0**| (string)| National or political entity name based on [GADM](https://gadm.org/data.html).| 
|**gid_0** | (string)| ISO A3 country code based on [GADM](https://gadm.org/data.html).|   
|**un_region**| string | name of UN region |
| **wb_region** | string | name of World Bank region |   

### Indicators: 
| Short | Full                              | Last Update   |
|-------|-----------------------------------|---------------|
|**bws**| water stress             |  Aqueduct 4.0 |

### Scenarios: 

We provide 3 future scenarios of climate and socioeconomic conditions:
 
| Short | Full              | Pathways      | Description                                     |
|-------|-------------------|---------------|-------------------------------------------------|
|**bau**| Business as Usual | SSP 3 RCP 7.0 | Middle of the road                              |
|**opt**| Optimistic        | SSP 1 RCP 2.6 | Carbon emissions are cut and society is healthy |
|**pes**| Pessimistic       | SSP 5 RCP 8.5 | Carbon emissions rise and society is fragmented |

### Years: 
 
Full| Period |
----------|-------------|
|**2030**| 2015-2045|
|**2050**| 2035-2065|
|**2080**| 2065-2095|

### Weights
| Short    | Full |
|-------------|-----|
|**tot**| Total gross withdrawal|  
|**dom**| Domestic gross withdrawal|  
|**ind**| Industrial gross withdrawal|  
|**irr**| Irrigation gross withdrawal|  
|**liv**| Livestock gross withdrawal|  
|**one**| Ones, i.e. no weights |

## Provincial Future

This dataset contains select projected Aqueduct™ indicators aggregated to the administrative level 1—provincial level. 

The data can be filtered using the following fields: "identifiers", "indicators", "scenarios", "years", and "weights. 

Score is the aggregated water risk value in numeric form. Label translates the score into a text-based risk category. Score_ranked can be used to rank the locations per indicator and weight, where 1 represents the most severe risk. 


### Identifiers:  
| Column Name     | Data Type | Description |
|------------------|-------------|-----|
|**name_0**| (string)| National or political entity name based on [GADM](https://gadm.org/data.html).| 
|**gid_0** | (string)| ISO A3 country code based on [GADM](https://gadm.org/data.html).|   
|**un_region**| string | name of UN region |
| **wb_region** | string | name of World Bank region |   

### Indicators: 
| Short | Full                              | Last Update   |
|-------|-----------------------------------|---------------|
|**bws**| water stress             |  Aqueduct 4.0 |

### Scenarios: 

We provide 3 future scenarios of climate and socioeconomic conditions:
 
| Short | Full              | Pathways      | Description                                     |
|-------|-------------------|---------------|-------------------------------------------------|
|**bau**| Business as Usual | SSP 3 RCP 7.0 | Middle of the road                              |
|**opt**| Optimistic        | SSP 1 RCP 2.6 | Carbon emissions are cut and society is healthy |
|**pes**| Pessimistic       | SSP 5 RCP 8.5 | Carbon emissions rise and society is fragmented |

### Years: 
 
Full| Period |
----------|-------------|
|**2030**| 2015-2045|
|**2050**| 2035-2065|
|**2080**| 2065-2095|

### Weights
| Short    | Full |
|-------------|-----|
|**tot**| Total gross withdrawal|  
|**dom**| Domestic gross withdrawal|  
|**ind**| Industrial gross withdrawal|  
|**irr**| Irrigation gross withdrawal|  
|**liv**| Livestock gross withdrawal|  
|**one**| Ones, i.e. no weights |

