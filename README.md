# Poudre Water Quality Network Study Chemistry Data

Current release: (09/2023- 12/2023)

Authors: Samuel J. Struthers (<https://orcid.org/0000-0003-1263-9525>),Timothy S. Fegel, Charles C. Rhoades (<https://orcid.org/0000-0002-3336-2257>), Matthew R.V. Ross (<https://orcid.org/0000-0001-9105-4255>)

**Data Description:** The majority of this dataset is water chemistry grab sample data collected in the Cache la Poudre Watershed in late 2023. These data are focused on basic water quality parameters, as well as cations and anions. Data were collected at various mainstem sites in the Lower Cache la Poudre watershed as well as one tributary of the Cache la Poudre River, Boxelder Creek. This project is ongoing and additional data will be released as it is analyzed.

**Background Information:** Following a fish kill in the Cache La Poudre River in Fort Collins in 2018, the ROSSyndicate at CSU and the City of Fort Collins partnered to deploy water quality sensors thoughout the the Lower Cache La Poudre River (Canyon Mouth to Windsor). The goal of this work is to understand how agricultural practices and urban storm water management influence water quality in the Poudre River, as well as tracking potential future water impairments or fish kills. In 2023, ROSS began collaborating with the Mortenson Center at the University of Colorado Boulder to collect grab samples and deploy additional sensors to investigate drivers of water quality and build correlations betweeen water chemistry data and in situ water sensors.

**Folder Structure**

The primary data file is `data/cleaned/lower_poudre_chemistry_up_to_20231205.csv`. Column definitions and units are defined in the file `metadata/water_chemistry_units.xlsx`. Methods used to collect these data are outline below or in `metadata/rmrs_procedures.png`

Location metadata file is `data/metadata/sonde_location_metadata.csv`. A basic map showing all sampling locations is available at `site_map.html`.

Code is housed in the `scripts` folder and contains the following files:

-   `00_analysis_setup.R` loads packages and metadata files to be collated in `01_chem_prep.qmd`.

-   `01_chem_prep.qmd` adds metadata and formats data for downstream uses using most recent water chemistry data file supplied by RMRS lab.

-   `sites_map.R` uses location metadata to create `site_map.html`

-   `demo.R` provides an example of how to download data from Zenodo directly in RStudio

Data are housed in the `data` folder and it contains the following:

-   `cleaned`: This folder contains the most recently available dataset and has associated location data added to the chemistry data. The addition of the metadata was accomplished using the `01_chem_prep.qmd` R script.

-   `cleaned_archive`: This folder contains an archive of previously cleaned data. Downstream users are encouraged to use the collated data file `lower_poudre_chemistry_up_to_20231205.csv` in the `cleaned` directory.

-   `raw`: These data were directly received by the ROSSyndicate from RMRS lab managers. Downstream users are encouraged to use the collated data file `lower_poudre_chemistry_up_to_20231205.csv` in the `cleaned` directory.

-   `metadata`: This contains location data, parameter/column name definitions, units, and methods used at the RMRS Lab. The file `data/metadata/sonde_location_metadata.csv` contains basic location metadata supplied by ROSSyndicate Field Coordinator, Sam Struthers.

**Sample Collection and Processing**

Field dissolved oxygen, temperature and conductivity measurements were taken using a Thermo Orion Star with RDO Optical and Conductivity probes. Times, when present, are listed in MST.

Samples were collected by ROSSyndicate technicians and were processed at the Rocky Mountain Research Station's Biogeochemistry Lab. Due to the high ion concentrations in the samples, samples were run at the following dilutions using greater than 18 MΩ-cm deionized water:

-   To measure ANC and NO3, samples were run at 1:5 dilution

-   To measure Na, K, Mg, Ca, Cl, and SO4, samples were run at 1:20 dilution

-   To measure DOC, pH, TDN, EC, NH4, chlorophyll *a,* TSS and Turbidity, samples were not diluted.

    Dilutions and sample processing were overseen by Timothy Fegel and Charles Rhoades, according to the following methods:

![List of parameters sampled and analytical methods used during the course of this study (adapted from the USFS Rocky Mountain Research Station's 2020 Quality Assurance Procedure Plan](data/metadata/rmrs_procedures.png)

**Funding:** This project was funded by the Mortenson Center at the University of Colorado Boulder, in-kind support was given by In Situ Inc, ROSSyndicate at CSU and RMRS biogeochemistry lab.

**Keywords**: Cache la Poudre, Poudre Water Quality Network, ROSSyndicate, water quality, agriculture, chlorophyll a, biogeochemistry

**Version**: v2024.01.03
