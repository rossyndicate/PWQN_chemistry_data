# Cameron Peak Fire Reservoir Study Data

Current release: (2021- 11/2023)

[![DOI](https://zenodo.org/badge/673979750.svg)](https://zenodo.org/badge/latestdoi/673979750)

Authors: Samuel J. Struthers (<https://orcid.org/0000-0003-1263-9525>),Timothy S. Fegel, Kathryn R. Willi (<https://orcid.org/0000-0001-7163-2206>), Charles C. Rhoades (<https://orcid.org/0000-0002-3336-2257>), Matthew R.V. Ross (<https://orcid.org/0000-0001-9105-4255>)

**Data Description:** The majority of this dataset is water chemistry grab sample data collected post-Cameron Peak Fire in the Cache la Poudre Watershed between the years of 2021 and 2023. This dataset also includes historical data collected pre Cameron Peak Fire by the Rhoades lab at the US Forest Service Rocky Mountain Research Station. These data are focused on basic water quality parameters, as well as cations and anions. Data were collected at various reservoirs in the Cache la Poudre watershed as well as the mainstem of the Cache la Poudre River. This project is ongoing and additional data will be released as it is analyzed.

**Background Information:** The 2020 Cameron Peak wildfire (CPF) was the largest wildfire in Colorado history at over 200,000 acres. The CPF burned a large proportion of the Cache la Poudre watershed, in particular areas surrounding high elevation reservoirs. This work is funded to support ongoing source water protection programs by the City of Fort Collins, Greeley, Thornton and Northern Water. In collaboration with the Rocky Mountain Research Station (USFS, RMRS), we are sampling various reservoir, tributary, and mainstem sites of the Cache la Poudre watershed. This field campaign allows us to analyze trends in water quality focusing on nutrients and other key constituents mobilized post-fire. The goal of this project is to understand how these nutrients affect algal growth in reservoirs and how those changes are propagated downstream. The reservoirs studied are the following: Barnes Meadow Reservoir, Chambers Lake, Comanche Reservoir, Hourglass Reservoir, Joe Wright Reservoir, Long Draw Reservoir, and Peterson Lake. Historical data (prior to 2021) was collected by the Rhoades Lab at the USFS' Rocky Mountain Research Station.

The primary data file is `data/cleaned/CPF_reservoir_chemistry_up_to_202301027.csv`. Column definitions and units are defined in the file `metadata/Units_Cam_Peak.xlsx`. Methods used to collect these data are outline below or in `metadata/rmrs_procedures.png`

Location metadata file is `data/metadata/cpf_sites.csv`. A basic map showing all sampling locations is available at `cpf_sites_map.html`.

Code is housed in the `scripts` folder and contains the following files:

-   `00_analysis_setup.R` provides loads packages and metadata files to be collated in `01_chem_prep.qmd`.

-   `01_chem_prep.qmd` adds metadata to most recent .csv of water chemistry data supplied by RMRS lab.

-   `distance_finder.R` uses NHDflowlines to calculate distances from furthest downstream site, PBD.

-   `cpf_sites_map.R` uses location metadata to create `cpf_sites_map.html`

-   `demo.R` provides an example of how to download data from Zenodo directly in RStudio

Data are housed in the `data` folder and it contains the following:

-   `cleaned`: This folder contains the most recently available dataset and has associated burn severity and location data added to the chemistry data. The addition of the metadata was accomplished using the `01_chem_prep.qmd` R script.

-   `cleaned_archive`: This folder contains an archive of previously cleaned data. Downstream users are encouraged to use the collated data file `CPF_reservoir_chemistry_up_to_20231027.csv` in the `cleaned` directory.

-   `raw`: These data were directly received by the ROSSyndicate from RMRS lab managers. Downstream users are encouraged to use the collated data file `CPF_reservoir_chemistry_up_to_20231027.csv` in the `cleaned` directory.

-   `metadata`: this contains location data, parameter/column name definitions, units, and methods used at the RMRS Lab. The `README` file in this folder explains burn severity classifications used in the files `sbs_watershed.csv`,`sbs_watershed.csv` and `cpf_sites.csv`

Field measurements were taken using a Thermo Orion Star with RDO Optical and Conductivity probes. Times, when present, are listed in MST. Samples were collected and processed using the Rocky Mountain Research Station's Biogeochemistry Lab, overseen by Timothy Fegel and Charles Rhoades, according to the following methods:

![List of parameters sampled and analytical methods used during the course of this study (adapted from the USFS Rocky Mountain Research Station's 2020 Quality Assurance Procedure Plan](data/metadata/rmrs_procedures.png)

**Funding:** This project was funded by the City of Fort Collins Utilities, City of Greeley Utilities, City of Thornton Utilities and Northern Water.

**Keywords**: Cameron Peak Fire, water quality, reservoirs, chlorophyll a, biogeochemistry

**Version**: v2023.12.13
