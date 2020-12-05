#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#





# Define server logic
shinyServer(function(input, output, session) {
  # Map year filter
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
          addLegend("topleft",
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

      the_html <- paste0("<style>
                          .aligncenter {text-align: center;}
                          </style>
                         <p class = 'aligncenter'>",
                         "<img src ='",
                         country_pol_list$img_url,
                         "' style='width: 90px;height: 120px;'>",
                         "<br>",
                         "<strong>",
                         country_pol_list$Name,
                         "</strong>",
                         "<br>",
                         country_pol_list$Position,
                         "</p>",
                         collapse = "<br><br>")
      women_power <- htmltools::HTML(the_html)
      women_power
    })
    
    output$women_legis_table <- renderDataTable({
      year_chosen <- paste(input$year_select_2)
      countries_data_select <- countries_data %>%
        filter(year == year_chosen) %>%
        select(-.data$year,
               -.data$`Country Code`,
               ) %>%
        rename(`% Women in Legislature` = proportion) %>%
        arrange(desc(.data$`% Women in Legislature`)) %>%
        mutate(`% Women in Legislature` = paste(.data$`% Women in Legislature`, "%", sep = "")) %>%
        mutate(`% Women in Legislature` = str_replace(.data$`% Women in Legislature`,
                                                      pattern = fixed("NA%"),
                                                      replacement = "Data not Available"))
      women_legis_table <- datatable(countries_data_select,
                                     class = "compact, stripe",
                                     options = list(pageLength = nrow(countries_data_select),
                                                    scrollX = TRUE,
                                                    scrollY = 400,
                                                    fixedHeader = TRUE,
                                                    bPaginate = FALSE))
      
      women_legis_table
    })
    
    output$countries_line_graph <- renderPlot({
      selected_countries <- paste0(input$country_select_2, collapse = "|")
      
      countries_line_graph <- countries_data %>%
        filter(str_detect(.data$`Country Code`, pattern = regex(selected_countries))) %>%
        ggplot(aes(x = .data$year,
                   y = .data$proportion,
                   group = .data$`Country Name`,
                   col = .data$`Country Name`)) +
        geom_line(size = 1) +
        scale_x_continuous(breaks = c(1998, 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016, 2018, 2020),
                           limits = c(1997, 2020)) +
        scale_y_continuous(breaks = c(0, 10, 20, 30, 40, 50, 60),
                           limits = c(0, 60),
                           labels = c("0%", "10%", "20%", "30%", "40%", "50%", "60%")) +
        geom_hline(yintercept = 50, linetype = "dashed", size = 1) +
        geom_hline(yintercept = 30, linetype = "dashed", size = 1) +
        annotate("text", x = 1997, y = 53, label = "Parity", hjust = 0) +
        annotate("text", x = 1997, y = 33, label = "UN 30% Guideline", hjust = 0) +
        labs(x = "\nYear",
             y = "Proportion of Women in the Legislature\n",
             col = "Country",
             caption = "Note: Breaks in lines indicate missing data") +
        theme_minimal() +
        theme(axis.title.x = element_text(size = 14, family = "Arial"),
              axis.title.y = element_text(size = 14, family = "Arial"),
              axis.text = element_text(size = 12, family = "Arial"),
              axis.text.x = element_text(angle = 45, hjust = 1),
              legend.text = element_text(size = 12))
      
      countries_line_graph
    })
    
    output$SG_Parl_Graph <- renderPlot({
      ggplot(SG_Parl_women, aes(x = .data$Year, y = .data$proportion, .data$position, col = .data$position)) +
        geom_line(size = 1) +
        scale_x_continuous(breaks = c(2009, 2011, 2013, 2015, 2017, 2019),
                           limits = c(2009, 2020)) +
        scale_y_continuous(breaks = c(0, 0.1, 0.2, 0.3, 0.4, 0.5),
                           limits = c(0, 0.53),
                           labels = scales::percent_format(accuracy = 1)) +
        geom_hline(yintercept = 0.5, linetype = "dashed", size = 1) +
        geom_hline(yintercept = 0.3, linetype = "dashed", size = 1) +
        annotate("text", x = 2009, y = .53, label = "Parity", hjust = 0) +
        annotate("text", x = 2009, y = .33, label = "UN 30% Guideline", hjust = 0) +
        labs(title = "Female Representation in Political Offices in Singapore",
             x = "\nYear",
             y = "Proportion of Women\n",
             col = "% Females as...",
             caption = "Data from the World Bank, Parliament.gov.sg, WIKIPEDIA") +
        theme_minimal() +
        theme(axis.title.x = element_text(size = 14, family = "TT Arial"),
              axis.title.y = element_text(size = 14, family = "TT Arial"),
              axis.text = element_text(size = 12, family = "TT Arial"),
              axis.text.x = element_text(angle = 45, hjust = 1),
              legend.text = element_text(size = 12))
      
    })
    
    output$sg_line_graph_comparison <- renderPlot({
      selected_countries <- "WLD|OED|SGP|EAS"
      
      sg_line_graph_comparison <- countries_data %>%
        filter(str_detect(.data$`Country Code`, pattern = regex(selected_countries))) %>%
        filter(.data$year >= 2010) %>%
        ggplot(aes(x = .data$year,
                   y = .data$proportion,
                   group = .data$`Country Name`,
                   col = .data$`Country Name`)) +
        geom_line(size = 1) +
        scale_x_continuous(breaks = c(2010, 2012, 2014, 2016, 2018, 2020),
                           limits = c(2010, 2020)) +
        scale_y_continuous(breaks = c(0, 10, 20, 30, 40, 50, 60),
                           limits = c(0, 55),
                           labels = c("0%", "10%", "20%", "30%", "40%", "50%", "60%")) +
        geom_hline(yintercept = 50, linetype = "dashed", size = 1) +
        geom_hline(yintercept = 30, linetype = "dashed", size = 1) +
        annotate("text", x = 2010, y = 53, label = "Parity", hjust = 0) +
        annotate("text", x = 2010, y = 33, label = "UN 30% Guideline", hjust = 0) +
        labs(title = "Female Legislative Representation in Singapore and Global and Regional benchmarks",
             x = "\nYear",
             y = "Proportion of Women in the Legislature\n",
             col = "Country",
             caption = "Note: Breaks in lines indicate missing data") +
        theme_minimal() +
        theme(axis.title.x = element_text(size = 14, family = "Arial"),
              axis.title.y = element_text(size = 14, family = "Arial"),
              axis.text = element_text(size = 12, family = "Arial"),
              axis.text.x = element_text(angle = 45, hjust = 1),
              legend.text = element_text(size = 12))
      
      sg_line_graph_comparison
    })

})
