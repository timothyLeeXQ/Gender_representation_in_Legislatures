library(shiny)
library(shinydashboard)
library(shinyWidgets)
library(dplyr)
library(tidyr)
library(stringr)
library(ggplot2)
library(highcharter)
library(leaflet)
library(DT)
library('Cairo')
Cairo::CairoWin()

# Setup - Data for Maps
world_map <- geojsonio::geojson_read("https://raw.githubusercontent.com/johan/world.geo.json/master/countries.geo.json", what = "sp")
sg_map <- geojsonio::geojson_read("https://github.com/yinshanyang/singapore/raw/master/maps/0-country.geojson", what = "sp")
sg_map@data$name <- "Singapore"

## Setup - Colouring for maps
map_bins <- c(0, 10, 20, 30, 40, 50, 100)
pal <- colorBin("RdYlGn", domain = world_map@data$proportion, bins = map_bins)

# Countries data setup
countries_data <- readr::read_csv("https://github.com/timothyLeeXQ/Gender_representation_in_Legislatures/raw/main/API_SG.GEN.PARL.ZS_DS2_en_csv_v2_1740381.csv") %>%
  select(.data$`Country Code`,
         .data$`Country Name`,
         paste(1997:2020)
  ) %>%
  tidyr::pivot_longer(.data,
                      cols = paste(1997:2020),
                      names_to = "year",
                      values_to = "proportion") %>%
  mutate(proportion = round(.data$proportion, digits = 2))

# Setup - World Map
leaflet_world <- leaflet(options = leafletOptions(minZoom = 2,
                                                  maxZoom = 3,
                                                  zoomControl = FALSE)) %>%
  htmlwidgets::onRender("function(el, x) {
        L.control.zoom({ position: 'topright' }).addTo(this)
    }") %>%
  setMaxBounds(lat1 = 90,
               lat2 = -90,
               lng1 = -179.739113,
               lng2 = 179.739113) %>%
  addTiles(attribution = "<a href = 'https://data.worldbank.org/indicator/SG.GEN.PARL.ZS'>Data from the World Bank</a>")

# Setup - SG Map
leaflet_sg <- leaflet(options = leafletOptions(minZoom = 8,
                                               maxZoom = 8,
                                               zoomControl = FALSE)) %>%
  setView(lat = 1.352754, lng = 103.866692, zoom = 8) %>%
  setMaxBounds(lat1 = 1.157170,
               lat2 = 1.476471,
               lng1 = 103.588712,
               lng2 = 104.1)

# Setup - Women in power dataset
pol_list <- readr::read_csv("https://github.com/timothyLeeXQ/Gender_representation_in_Legislatures/raw/main/Women%20Politicians.csv")