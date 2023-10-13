# Aqueduct 4.0 Frequently Asked Questions
## IMPORTANT RESOURCES
1.	[Read about our data and methodology]( https://www.wri.org/research/aqueduct-40-updated-decision-relevant-global-water-risk-indicators)
2.	[Download sub-basin data (baseline and future)]( https://www.wri.org/data/aqueduct-global-maps-40-data)
3.	[Download country and state rankings (baseline and future)]( https://www.wri.org/data/aqueduct-40-country-rankings)
4.	[Submit a question or report a bug](https://form.asana.com/?k=QWAlk9irSkhMNvxJqyFyEw&d=25496124013636)
5.	[Learn more about Aqueduct](https://www.wri.org/aqueduct/faq)
## FAQ SECTIONS
1.	[Data Sources and Availability](https://github.com/wri/Aqueduct40/blob/master/data_FAQ.md#data-sources-and-availability)
2.	[Update Reasoning and Methodology](https://github.com/wri/Aqueduct40/blob/master/data_FAQ.md#update-reasoning-and-methodology)
3.	[Water Risk Interpretation](https://github.com/wri/Aqueduct40/blob/master/data_FAQ.md#water-risk-interpretation)
4.	[Water Stress](https://github.com/wri/Aqueduct40/blob/master/data_FAQ.md#water-stress)
5.	[Groundwater Data](https://github.com/wri/Aqueduct40/blob/master/data_FAQ.md#groundwater-data)
6.	[Corporate Targets and Usage](https://github.com/wri/Aqueduct40/blob/master/data_FAQ.md#corporate-targets-and-usage)
7.	[Other](https://github.com/wri/Aqueduct40/blob/master/data_FAQ.md#other)

### Data Sources and Availability

#### Q. Is the former Aqueduct version 3.0 still available on the web?
*The tool is updated to 4.0 data, but you can still [download Aqueduct 3.0 data here.](https://www.wri.org/data/aqueduct-global-maps-30-data)*

#### Q. Is Aqueduct 4.0 available for download?
*Yes! You can find the baseline and future data—provided as both tabular and spatial data formats—[here.](https://www.wri.org/data/aqueduct-global-maps-40-data)*

#### Q. Does WRI also share grid-level output of the hydrological model? What is the resolution and format of this data?
*You can find the raw outputs to the model run on Utrecht University’s [data portal.]( https://public.yoda.uu.nl/geo/UU01/YM7A5H.html). The outputs are 5x5 arc minute, monthly, global NETCDFs.*

#### Q. I see a major and minor basin name when I download the results. Where do they come from? Why are they different from the names we use locally?
*Watershed delineation lacks a universal standard, resulting in variations based on geographical location. To address this challenge and cater to Aqueduct's global reach, encompassing transboundary watersheds, we've implemented a consistent, worldwide system for sub-basin delineation and nomenclature.*

*Our framework relies on [HydroBASIN Level 6 sub-basins](https://www.hydrosheds.org/products/hydrobasins) for delineation, each identified by a unique 6-digit code rather than specific names. To provide clearer identification, the Water Risk Atlas complements this approach by incorporating [FAO's regional basin names](https://data.apps.fao.org/map/catalog/srv/eng/catalog.search#/metadata/7707086d-af3c-41cc-8aa5-323d8609b2d1), which offer major and minor basin designations.*

*However, it's important to note that HydroBASIN Level 6 and FAO sub-basins do not always align in a one-to-one correspondence; it's more of a many-to-many relationship. The combination of these designations primarily applies when working with point data within the tool.*

#### Q. Does WRI offer training or support resources for users looking to leverage the Aqueduct tool effectively?
*WRI provides webinars to help users make the most of the tool’s capabilities. Our latest webinar on how to use the Water Risk Atas can be found [here.](https://www.wri.org/events/2023/9/aqueduct-water-risk-atlas-future-projections-tool-demonstration)*

#### Q. How is the data for the tool acquired and updated over time?
*The data sources for the tool encompass a diverse range, spanning hydrological models, remote sensing, and published datasets. As a standard practice, our global hydrological model is re-run approximately every 3-4 years based on data availability and research developments. The tool undergoes periodic updates to integrate the most current data and advancements in methodology.*

#### Q. Did Aqueduct Food and Floods update with Aqueduct 4.0?
*No, Aqueduct Food and Floods did not update. We will be updating Aqueduct Food with the new water risk data in the coming months. Aqueduct Floods uses a different model and was not updated. If you have an interest in updated flood risk information, please contact Samantha Kuzma (samantha.kuzma@wri.org).*

### Update Reasoning and Methodology

#### Q. Why was the baseline updated in Aqueduct 4.0? 
*Aqueduct 4.0 brings updates in data sources, methodology, and additional features that enhance the accuracy and usefulness of the tool compared to Aqueduct 3.0. For more details on what changed, see our [What’s New guide.]( https://github.com/wri/Aqueduct40/blob/master/log_of_changes/Aqueduct%204.0%20What's%20New.png)*

#### Q. Can you share the reasoning behind updating the future Business-as-Usual scenario to SSP3 RCP 7.0 compared to SSP2 RCP 8.5 used in Aqueduct 2.0?
*Our research partners at Utrecht recommended this based on these publications: The [Scenario Model Intercomparison Project (ScenarioMIP) for CMIP6](https://gmd.copernicus.org/articles/9/3461/2016/) and [ISIMIP3b bias adjustment fact sheet.](https://www.isimip.org/gettingstarted/isimip3b-bias-adjustment/)*

#### Q. Was the previous version of Aqueduct’s future projections using CMIP 5 or 6?
*The previous version of Aqueduct used CMIP 5 climate data. The new version (Aqueduct 4.0) uses CMIP 6.*

### Water Risk Interpretation

#### Q. How are the thresholds for each indicator scoring determined? 
*For each indicator, we determined thresholds using existing literature, the range and distribution of indicator values, and expert judgment. We describe the process of setting thresholds in [Chapter 4 (Indicators).](https://www.wri.org/publication/aqueduct-40)*

#### Q. How do I interpret scores? 
*The scores provided are a normalized representation of the raw risk value, and allow for a standardized comparision of severity of risk across various water challenges. In this context, higher scores represent greater risk. For example, a water stress score of 5 means extreme competition over water supply.* 

*When interpreting water stress categories, the "Arid and Low Water Use" category designates sub-basins afflicted by severe water scarcity. It distinguishes itself from "Extremely High Water Stress," which denotes the most acute level of water stress, by virtue of having lower water demands. Nevertheless, we strongly advise users to regard the "Arid and Low Water Use" category as a top priority, along with “Extremely High Water Stress" and "High Water Stress" as they also represent elevated risk levels.*

*If you are using the Country Ranking tool, we rank locations by highest to lowest risk.*

#### Q. The future projections data returned higher water stress score for the optimistic scenario compared to the pessimistic scenario. Why? 
*The Aqueduct scenarios reflect distinct policy pathways and should not be misconstrued as a comparison between the best-case and worst-case scenarios. For example, the optimistic scenario envisions a trajectory marked by reduced carbon emissions and stable, equitable economic growth. In some areas, this may paradoxically translate into higher water demand due to increased economic activity, potentially resulting in elevated water stress levels compared to a more pessimistic projection.*

#### Q. Why are the water supply and demand values in the future dataset measured as fluxes, not volumes? How do I interpret these numbers?
*Volumes (cubic meters) can vary significantly based on the size of each sub-basin, potentially misleading as they might primarily reflect a larger geographical area rather than indicating a higher rate of water flow. On the other hand, fluxes (centimeters/year), which measure the rate of water flow, offer a more direct and equitable means of comparing water availability between different sub-basins. Volume = Flux x Area.*

#### Q. Why do two addresses in nearby neighborhoods return different water stress values?
*Aqueduct is a global hydrological model and is limited in its local precision. Two nearby addresses may show different results if they lie in different watersheds.*

#### Q. How accurate is the Aqueduct tool at a local level, and should I rely on it for specific locations?
*Aqueduct is a global tool, and while it provides valuable insights into water risk at a broad scale, its local precision may vary. For specific local assessments, it's recommended to use additional local data and expertise.*

#### Q. How does Aqueduct account for uncertainty in its future projections, particularly regarding the climate models used?
*Uncertainty in future projections is considered by examining variations among Global Climate Models (GCMs)*

### Water Stress

#### Q. When I calculated annual water stress myself (using the raw values for supply and demand), I came up with different values than the tool’s reported water stress raw values. Any idea why I’m seeing this discrepancy?
*We determine the annual water stress score by using a weighted average of monthly values, with the total demand serving as the weighting factor. Essentially, months characterized by higher demand have a higher influence on the annual stress value, as they coincide with periods of heightened human water necessity and, consequently, increased socioeconomic reliance on water resources. This approach results in a different representation compared to a straightforward division of annual supply by annual withdrawal.*

#### Q. What does a raw value of 9999 mean? What about -9999?
*A raw value of 9999 indicates a severe water scarcity in a sub-basin, signifying that the available supply is nearly exhausted while the demand remains persistent. This value is assigned to sub-basins where supply remains less than half of the monthly arid definition (0.001 meter/month) for at least six months, and it is applied uniformly in such cases.
Conversely, a value of -9999 is indicative of a lack of data, meaning that there were insufficient raw data inputs to compute the risk level for that specific sub-basin.*

### Groundwater Data

#### Q. Is the groundwater included in your measurement of water supply? 
*Rechargeable groundwater is included in our definition of water supply (along with surface flow and interflow). Aqueduct defines supply as available blue water—the total amount of renewable freshwater available to a sub-basin with upstream consumption removed. This definition is consistent across baseline (current) conditions and future projections.*

#### Q. Are there any plans to integrate non-renewable groundwater into your definition of water stress?
*No, the definition of water stress has traditionally focused on renewable water specifically. We do have an indicator on groundwater table decline, although this was not updated in Aqueduct 4.0.*

#### Q. Based on what I read in the 3.0 methodology note, I understood that groundwater data was based on GRACE satellite mission, which I am not sure is available now. Are there any new sources and methods to get groundwater data?
*We did not update our groundwater table decline indicator in the Aqueduct 4.0 release. If there are new sources of global groundwater data like you'd like to recommend to Aqueduct, please email Samantha Kuzma (samantha.kuzma@wri.org)*

### Corporate Targets and Usage

#### Q. For setting corporate targets, do you have a recommendation about whether we should use a sub-basins’ baseline water stress or forecasted water stress score?
*Generally, corporate target setting to date has been based on baseline risk scores. We encourage companies to begin incorporating future projections of water risk into their water stewardship strategies. If you have questions on how to do this, please contact us!* 

#### Q. I already set targets using Aqueduct 3.0. What now? 
*Both datasets are screening tools and can be used to prioritize action. If you've already set goals using 3.0, please continue to use that data. Aqueduct 4.0 baseline data can be used as an additional screening measure to find potential new priorities. We recommend using the Aqueduct 4.0 Future Projections to flag areas that may become priorities in the future. If you are setting new goals, or using a longer timeline, we recommend using version 4.0.*

### Other

#### Q. Since WRI is a US-based organization, are there special scenarios for the US?
*There are no local datasets, scenarios, or models used in our data. Our data is based on the outputs from a peer-reviewed, global hydrological model [(PCR-GLOBWB 2 by Utrecht University).]( https://globalhydrology.nl/research/models/pcr-globwb-2-0/)*

