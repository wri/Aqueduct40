# Aqueduct 4.0 Frequently Asked Questions


#### Q. What does a raw value of 9999 mean? What about -9999?
A water stress or water depletion raw value of 9999 represents a location with extreme water scarcity, where supply is essentially 0 and yet there is sustained demand. A value of -9999 means No Data—there was not enough raw data to estimate the risk in this sub-basin. 

#### Q. How should I interpret "Arid and Low Water Use"? Is this essentially a "no data" result?
A location within the “Arid and Low Water Use” category suffers from extreme water scarcity. While there is little activity in these sub-basins, you should still interpret this as a priority basin. In fact, Aqueduct gives these sub-basins the highest water stress score of 5. That is because you are operating in a location with very few renewable water resources. These sub-basins are particularly exposed to future water stress: if a large water user moves into your sub-basin, the risk could easily elevate from “Arid and Low Water Use” to “Extremely High”. These sub-basins are manually assigned a water stress or water depletion raw value of 1.

#### Q. I see a major and minor basin name when I download the results. Where do they come from? Why are they different from the names we use locally? 
There is no universal watershed delineation standard. Even within countries, watershed names may vary based on location. Given that Aqueduct works on a global scale, including transboundary watersheds, we needed a global system to delineate and name sub-basins. We use [HydroBASIN Level 6 sub-basins]( https://www.hydrosheds.org/products/hydrobasins) to delineate our watersheds; however, these are currently unnamed, using instead a 6-digit code to identify unique geometries. Therefore, the Water Risk Atlas also uses [FAO’s regional sub-basin names]( https://data.apps.fao.org/map/catalog/srv/eng/catalog.search#/metadata/7707086d-af3c-41cc-8aa5-323d8609b2d1) to provide major and minor sub-basin names. Unfortunately, the HydroBASIN Level 6 and FAO sub-basins do not align (i.e., a many-to-many match). Aqueduct only uses them together when working with point data on the tool. 


#### Q. The future projections at my location show the optimistic result has a higher water stress score than the pessimistic scenario. Is that a bug? 
The future scenarios represent policy pathways, not best-and-worst-case scenarios for water risk. For example, the optimistic scenario is labeled optimistic because it represents ideal policy pathways: declining carbon emissions and a more stable, equitable economic development. However, climate science isn’t as “neat” as optimistic vs. pessimistic. An optimistic pathway may actually lead to more water demand through increased economic development, which could result in higher water stress than a pessimistic future. These pathways can also impact the climate. In some places, higher carbon emissions may result in heavier, more erratic rainfall. While this isn’t necessarily a “good” outcome, more extreme rainfall could reduce water stress by increasing the renewable supply in an area. 

#### Q. Why are water supply and demand measured as fluxes and not volumes? How do I interpret these numbers?
Volumes are dependent on the area of each sub-basin, meaning a higher volume might be indicative of a larger area rather than a higher rate of water. Fluxes—measuring the rate of flow—can be used to directly compare water availability from one sub-basin to the next. 
