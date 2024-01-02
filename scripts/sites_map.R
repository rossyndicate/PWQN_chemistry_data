#This script will output cpf_sites_map.html so folks can view where sites are located


source("scripts/00_analysis_setup.R")
#00_analysis_setup reads in location data from 'data/metadata/sonde_location_metadata.csv' into object Sites

sonde_sites <- site_meta%>%
  #remove sites with no location data
  separate(lat_long, into = c("sonde_lat", "sonde_long"), sep = ",")%>%
 #make into sf object for mapping
  sf::st_as_sf(coords = c("sonde_long","sonde_lat"), crs = 4326)
#organize from upstream to downstream
sonde_sites$site_code <- factor(sonde_sites$site_code , levels = c("JOEI", "CBRI", "CHD", "PFAL", "SFM", "PBD", "tamasag", "legacy", "lincoln","timberline","prospect","boxelder", "archery","riverbluffs", "boxcreek", "springcreek"  )) 


#Make map of each type of site that ROSS samples and owns the data for
map <-mapview::mapview(
  filter(sonde_sites, Project == "Reservoir Study"),
  zcol = "site_code",
  col.regions = brewer.pal(6, "Set2"),
  legend = TRUE, 
  layer.name = "Upper Study Sites"
)+ 
  mapview::mapview(
    filter(sonde_sites, Project == "PWQN"),
    zcol = "site_code",
    col.regions = brewer.pal(8, "YlOrRd"),
    legend = TRUE, 
    layer.name = "Lower Study Sites"
  )+ mapview::mapview(
    filter(sonde_sites, Project == "CU"),
    zcol = "site_code",
    col.regions = c("green1", "green4"),
    legend = TRUE, 
    layer.name = "CU Tributary Study Sites"
  )

map
