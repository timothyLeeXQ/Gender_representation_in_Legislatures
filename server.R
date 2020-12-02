#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(dplyr)
library(tidyr)
library(highcharter)
library(leaflet)

# Setup - Data for Maps
world_map <- geojsonio::geojson_read("https://raw.githubusercontent.com/johan/world.geo.json/master/countries.geo.json", what = "sp")
sg_map <- geojsonio::geojson_read("https://github.com/yinshanyang/singapore/raw/master/maps/0-country.geojson", what = "sp")
sg_map@data$name <- "Singapore"

## Setup - Colouring for maps
map_bins <- c(0, 10, 20, 30, 40, 50)
pal <- colorBin("RdYlGn", domain = world_map@data$proportion, bins = map_bins)

# Countries data setup
countries_data <- readr::read_csv("https://github.com/timothyLeeXQ/Gender_representation_in_Legislatures/raw/main/API_SG.GEN.PARL.ZS_DS2_en_csv_v2_1740381.csv") %>%
  select(.data$`Country Code`,
         .data$`Country Name`,
         paste(1997:2019)
         ) %>%
  tidyr::pivot_longer(.data,
                      cols = paste(1997:2019),
                      names_to = "year",
                      values_to = "proportion") %>%
  mutate(proportion = round(.data$proportion, digits = 2))

# Setup - World Map
leaflet_world <- leaflet(options = leafletOptions(minZoom = 2, maxZoom = 3)) %>%
  setMaxBounds(lat1 = 90,
               lat2 = -90,
               lng1 = -179.739113,
               lng2 = 179.739113) %>%
  addTiles(attribution = "<a href = 'https://data.worldbank.org/indicator/SG.GEN.PARL.ZS'>Data from the World Bank</a>")

# Setup - SG Map
leaflet_sg <- leaflet(options = leafletOptions(minZoom = 8, maxZoom = 8)) %>%
  setView(lat = 1.352754, lng = 103.866692, zoom = 8) %>%
  setMaxBounds(lat1 = 1.157170,
               lat2 = 1.476471,
               lng1 = 103.588712,
               lng2 = 104.1)

# Setup - Women in power dataset
pol_list <- readr::read_csv("https://github.com/timothyLeeXQ/Gender_representation_in_Legislatures/raw/main/Women%20Politicians.csv")

# Define server logic
shinyServer(function(input, output, session) {
  # Map year filter
  output$countries_data_select <- reactive({

    countries_data_select
  })

    output$leaflet_world_map <- leaflet::renderLeaflet({
      year_chosen <- paste(input$year_select)
      countries_data_select <- countries_data %>% filter(year == year_chosen)
      # Data join
      world_map@data <- world_map@data %>%
        dplyr::left_join(countries_data_select, by = c("id" = "Country Code")) %>%
        select(-.data$name)

      #Labels
      world_labels <- sprintf("<strong>%s</strong><br/>%g%%",
                        world_map@data$`Country Name`,
                        world_map@data$proportion) %>%
        lapply(htmltools::HTML)

      # Map
      leaflet_world_map <- leaflet_world %>%
          addPolygons(data = world_map, stroke = TRUE, smoothFactor = 0.5,
                weight = 1, color = '#333333', opacity = 1,
                fillColor = ~pal(proportion),
                fillOpacity = 1,
                highlightOptions = highlightOptions(color = '#000000',
                                                    weight = 3,
                                                    bringToFront = TRUE,
                                                    sendToBack = TRUE),
                label = world_labels,
                labelOptions = labelOptions(
                  style = list("font-weight" = "normal", padding = "3px 8px"),
                  textsize = "15px",
                  direction = "auto")
                ) %>%
          addLegend("bottomright",
              pal = pal,
              values = world_map@data$proportion,
              opacity = 1,
              title = htmltools::HTML("% Women<br>in Legislature"))

      leaflet_world_map
    })

    output$leaflet_sg_map <- leaflet::renderLeaflet({
      year_chosen <- paste(input$year_select)
      countries_data_select <- countries_data %>% filter(year == year_chosen)
      # Data join
      sg_map@data <- sg_map@data %>%
        dplyr::left_join(countries_data_select, by = c("name" = "Country Name"))

      #Labels
      sg_labels <- sprintf("<strong>%s</strong><br/>%g%%",
                           sg_map@data$`name`,
                           sg_map@data$proportion) %>%
        lapply(htmltools::HTML)

      # Map
      leaflet_sg_map <- leaflet_sg %>%
        addPolygons(data = sg_map, stroke = TRUE, smoothFactor = 0.5,
          weight = 1, color = '#333333', opacity = 1,
          fillColor = ~pal(proportion),
          fillOpacity = 1,
          highlightOptions = highlightOptions(color = '#000000',
                                              weight = 3,
                                              bringToFront = TRUE,
                                              sendToBack = TRUE),
          label = sg_labels,
          labelOptions = labelOptions(
            style = list("font-weight" = "normal", padding = "3px 8px"),
            textsize = "15px",
            direction = "auto")
          )

      leaflet_sg_map
    })

    output$women_power <- renderUI({
      selected_country <- paste(input$country_select_1)
      country_pol_list <- pol_list %>%
        filter(Country_Territory == selected_country)

      the_html <- paste0("<img src ='",
                         country_pol_list$img_url,
                         "' style='width: 90px;height: 120px;'>",
                         "<br>",
                         "<strong>",
                         country_pol_list$Name,
                         "</strong>",
                         "<br>",
                         country_pol_list$Position,
                         collapse = "<br><br>")
      women_power <- htmltools::HTML(the_html)
      women_power
    })

})
