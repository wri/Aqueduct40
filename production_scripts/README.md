# Aqueduct 4.0 Production Scripts

Creative Commons 4.0 License through December 31, 2023.

See [Aqueduct 4.0 Technical Note](https://www.wri.org/publication/aqueduct-40) for more information on the data and methodology.

Suggested Citation: S. Kuzma, M. Bierkens, S. Lakshman, et. al. 2023. “Aqueduct 4.0: Updated Decision-
Relevant Global Water Risk Indicators.” Technical Note. Washington, DC: World Resources Institute. Forthcoming.  

# Purpose
These scripts take the outputs from the PCR-GLOBWB 2 model, which ran both baseline inputs and future projected inputs based on CMIP6 climate forcings. The PCR-GLOBWB 2 model was run on a vitural machine in Azure in late 2021 by WRI and Utrecht University. Model output results were saved to an Azure Data Lake. 

WRI, with guidance from Utrecht and Bluerisk, developed the post-processing scripts to turn the model outputs into indicators of water risk. 

# Steps
## Step 1: Spatial Aggregation (see Chapter 2)
The model outputs were NetCDFs (3-D raster, contains lat, lonss, and time as index) created for 53 regions in the world. The data had to be broken into regions due to size and memory contraints. WRI used the python model [Xarray](https://docs.xarray.dev/en/stable/) and  [rasterstats](https://pythonhosted.org/rasterstats/) to spatially aggregate the gridded data into catchment (HydroBASIN Level 6) summaries. This method allowed us to process the entire timeseries (ex: mmonthly data from 2015-2100) for a polygon in one step. Step 1 scripts were run in Azure DataBricks. 

## Step 2: Temporal Aggregation (see Chapter 2)
Once the gridded data was spatially aggregated to catchments, we needed to organize the data. In Step 2a, we bring in all datasets under all timeperiods and scenarios (supply and demand for baseline and future. Future data includes the 3 scenarios and 5 GCM runs per scenario). Step 2a produces 1 CSV file per catchment that includes all timeseries data in million m3/month units.

Step 2b then summarizes the monthly timeseries data into milestone years 2019, 2030, 2050, 2080. First, we run filter through each month. Then, we segment the data by periods:
Full| Period |
----------|-------------|
|**2019**| 1979-2019|
|**2030**| 2015-2045|
|**2050**| 2035-2065|
|**2080**| 2065-2095|

For each period, we first run a trailing moving average window to smooth the time series. Then, we run a Theil Sen regression. We chose Theil Sen over the Ordinary Least Square regression used in Aqueduct 3.0 because Theil Sen is less sensitive to anomalies. At the same time, we found the average value and standard deviation of the monthly time series to help calculate the variability indicators later on. 

Once the data has been summarized by their long-term trends at the milestone years, we bias-correct the future projections data so they align to the observed baseline climate data. We essentially find the difference between future GCM and historic GCM, and add that difference to the baseline. 

Finally, we follow Aqueduct 3.0's methodology and pool resources within delta basins like the Nile. 

## Step 3: Calculate indicators (See Chapter 4)
Once the supply and demand data has been processed, we can caluclate our indicators: water stress, water depletion, seasonal variability, and interannual variability. Water stress and depletion are calculated at the monthly time step first before being averaged into annual. Note, annual stress and depletion use a weighted average approach, where months with more demand have greater influence over the final value. This follows the method used in Aqueduct 3.0.

## Step 4: Finalize data (See Chapter 4 and 6)
After the updated indicators are created, we add them into the overall water risk framework. This includes merging some Aquduct 3.0 indicators with the new Aqueduct 4.0 indicators, and recalculating the Grouped and Overall Water Risk Scores. 

## Step 5: Country and State Aggregations (see Chapter 5)
Step 1 was run for catchments; it was also run for catchment-state intersects. This second run allows us to calculate demand within country and state watersheds. These demand values are then used in a weighted average to aggregate catchment values to country and state borders. 

Step 5a cleans the catchment-state demand data. Step 5b performs the weighted aggregation. 
