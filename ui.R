#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Selector creation
countries_dropdown_line_graph <- c("Singapore" = "SGP",
                                   "Malaysia" = "MYS",
                                   "Indonesia" = "IDN",
                                   "Thailand" = "THA",
                                   "Philippines" = "PHL",
                                   "Japan" = "JPN",
                                   "South Korea" = "KOR",
                                   "China" = "CHN",
                                   "India" = "IND",
                                   "Australia" = "AUS",
                                   "New Zealand" = "NZL",
                                   "United Arab Emirates" = "ARE",
                                   "United Kingdom" = "GBR",
                                   "France" = "FRA",
                                   "Germany" = "DEU",
                                   "United States" = "USA",
                                   "Canada" = "CAN",
                                   "Global" = "WLD")


countries_dropdown <- c("Singapore",
                        "Malaysia",
                        "Indonesia",
                        "Thailand",
                        "Philippines",
                        "Japan",
                        "South Korea",
                        "China",
                        "Hong Kong",
                        "India",
                        "Australia",
                        "New Zealand",
                        "United Arab Emirates",
                        "United Kingdom",
                        "France",
                        "Germany",
                        "United States",
                        "Canada")


header <- dashboardHeader(title = "ST Test Submission")


sidebar <- dashboardSidebar(
    sidebarMenu(
        menuItem("Interactive Tool", tabName = "explore", icon = icon("mouse-pointer")),
        menuItem("Main Story", tabName = "story", icon = icon("newspaper")),
        menuItem("Submission Details", tabName = "sub_details", icon = icon("file-alt"))
    )
)


body <- dashboardBody(
    tabItems(
        tabItem(
            tabName = "sub_details",
            fluidRow(
                box(width = 12,
                    title = "The Task",
                    HTML("
                    <p>
                    Using this data and data you can collect on other general
                    elections in the region, provide a quick story that focuses
                    on Singapore's female candidates and gender representation
                    in parliaments around the world.
                    <br>
                    <br>
                    <em>Deliverables are elaborated on in the boxes below.</em>
                    </p>")
                )
            ),
            fluidRow(
                box(width = 12,
                    title = "Reasoning and Approach",
                    HTML("
                    <p>I believe that the key story we want to tell with regards
                    to female representation in legislative elections and
                    legislatures is not limited to legislatures and elections.
                    <br>
                    <br>
                    Rather, the key point is the shifting landscape of society,
                    in Singapore, the region, and globally to one where there is
                    greater female participation, including at society's highest
                    levels. Women leaders and legislators are no longer a
                    surprising exception but are regarded as bringing important
                    perspectives to society. The shifting composition of
                    legislatures and in elections can be used (and is used here)
                    as an illustration of this societal shift.
                    <br>
                    <br>
                    To this end, the map is intended to show this at a global
                    and regional level, while the 'Women in key positions'
                    portion bridges the aggregate data with the human story of
                    change at the highest political offices, highlighting how
                    many of the newsmakers we are already familiar with are
                    women. I chose not to limit this list to legislators, despite
                    this not being in the main script of the task, as the
                    greater point I am trying to bring across is one of growing
                    female representation at the highest levels of the political
                    sphere, and  many influential politicians are not legislators
                    (e.g. Presidents).
                    <br>
                    <br>
                    While the trend of growing female participation at the
                    highest levels of the political shere trend is general, the
                    closing political gender gap in each society has its
                    perculiarites. A second goal of the visualisations (the
                    table and interactive linegraph) is to expose these
                    perculiarities through providing a graphic of its most
                    apparent (and readily quantifiable) symptom - differences
                    in the pace of progress between nations.
                    <br>
                    <br>
                    These visualisation efforts focus on nations that I believe
                    to be of key interest to The Straits Times readership -
                    Singapore, its key neighbours, major global and regional
                    powers, and locations with a large Singaporean diaspora.
                    While I hoped to present a truly global perspective by
                    including data on more nations, including those which are
                    less discussed in the Singaporean and Asian discourses, I
                    felt that this ran the risk of making the data overwhelming
                    and detracting from the point of the story, making the
                    interactive tool more of something to play with and and
                    explore, but take away nothing.  I feel that limiting the
                    discussion to nations ST readers are most familiar with
                    provides a stronger chance for readers to, through their use
                    of the tool, to construct for themselves a narrative of the
                    shifting gender distribution of political power in Singapore,
                    regionally, and globally, and to wonder why there are
                    some differences between nations/regions.
                    <br>
                    <br>
                    The prose in a supporting article can then capitalise on these
                    takeaways to further explore the why question, along with why
                    this is worth addressing, and how it may be addressed. The
                    story provided explores these issues in the specific case of
                    Singapore as an anchor for the regional and global discussion.
                    </p>")
                )
            ),
            fluidRow(
                box(width = 12,
                    title = "A completed data visualisation that would be the
                    feature of the piece",
                    HTML("<p>Find this in the section titled Interactive Tool.</p>
                         ")
                )
            ),
            fluidRow(
                box(width = 12,
                    title = "Headline, deck, and any subheadings where needed.
                    Write at least 1 or 2 paragraphs where necessary.",
                    HTML("<p> I have included headlines and subheadings in both
                    the story on Singapore and the interactive graphic tool.
                    I think that on the homepage that links to these, the decks
                    should be drafted separately from the subheadings to provide
                    more of a summary of what the reader is going to get and entice
                    clicks, rather than expand on the headline.</p>
                    <br>
                    <br>
                    <p>Here is my idea for Decks for the:</p>
                    <br>
                    <ul>
                        <li><strong>Main story: </strong><br>
                        <h2>More Women in Parliament Over the Years</h2>
                        <p>
                        Female representation in Singapore's political
                        sphere is increasing, but men still dominate <br>
                        in key positions. We track the progress so far in
                        closing the political gender gap, and ask why and <br>
                        what more can be done.
                        </p>
                        </li>
                        <li><strong>Interactive Tool: </strong><br>
                        <h2> Explore: Women in Power Across the World</h2>
                        <p>
                        Explore the Political Gender Gap in Singapore and
                        the rest of the world and learn about women <br>
                        in key political positions in the region.
                        </p>
                        </li>
                    </ul>
                    ")
                )
            ),
            fluidRow(
                box(width = 12,
                    title = "Highlight at least 3 other questions you might ask
                    of the data and some ideas on how to answer them. Imagine
                    you have time & space to include these in the main story,
                    or even propose some as a separate article.",
                    HTML("
                    <ol>
                        <li> The candidates dataset can be used to answer the
                        question: 'What is the mix of backgrounds of Singapore's
                        MPs and Cabinet?' This can be explored as a separate
                        deep-dive feature piece by using the data to visualise
                        the distribution of our representatives' schooling
                        (elite/non-elite schools), degrees, and professional
                        background.
                        <br>
                        <br>
                        This is worth exploring as there is a known but still
                        relatively underdiscussed notion that Singapore's elite,
                        from which most of our politicians are drawn, come from
                        a small set of schools, academic training, and
                        professional backgrounds. This is likely reflected in
                        our legislature and cabinet. An underrepresentation of
                        certain backgrounds in our government and legislature
                        has clear implications on society in terms of the ability
                        of our representatives and leaders to understand the
                        people who are affected by the laws and policies they
                        create. This issue is also of public interest as the
                        background of our parliamentarians has large implications
                        on the dynamics of discourse in Parliament - one only
                        needs to look at the impact of Prof Walter Theresia's
                        influence on debates is a clear illustration
                        of how someone from a different background and training
                        to most of our politicians can have an immediately
                        noticeable impact on Parliamentary discourse, despite
                        the fact that Prof Theresia is not even an elected MP.
                        <br>
                        <br>
                        <li> The candidates dataset and older election data can
                        be used to explore the question of 'To what extent do
                        politicians change the constituency they want to
                        represent between elections?' This question can also
                        be explored in an interactive storytelling piece
                        tracking the movement of candidates in different
                        elections. An interactive tool can guide users to select
                        a candidate, and then show where they have stood for
                        election, and chart their journey across the island in
                        their quest for office.
                        <br>
                        <br>
                        This question is worth exploring as politicians and the
                        Singaporean electorate have long been conscious about
                        the tension between the fragility of local 'town'
                        community in a city state where politicians do not need
                        to live in their constituency, and the emphasis on local
                        towns in the town council system and electoral boundaries
                        that come into focus when election season arrives.
                        Politicians have to weigh the calculus between building
                        a localised base of support by staying with a
                        constituency for a long time, and capitalising on the
                        political wisdom of introducing star power into a
                        constituency to improve one's chances of victory.
                        Understanding how politicians weigh this tradeoff,
                        provides some insight into their sense of ownership of
                        the communities that the help build in their time
                        working the ground. I feel this is of great public
                        interest for Singaporeans.
                        <br>
                        <br>
                        <li> The Seats by Women dataset can be combined with
                        data on the countries' political environment (electoral
                        system - first past the post, proportional
                        represetation, state system - Marxist-Leninist, Liberal
                        Democracy, history of the state - former Soviet, former
                        British colony, etc.) as an extension of the present
                        piece on women in Parliament. These differences between
                        states could offer more insight into why female
                        representation in legislatures differs between countries
                        than what is provided here. For instance, perhaps former
                        British colonies are more willing to accept female
                        leaders having been more tuned in to the time of
                        Thatcher, and the influence of Queen Elizabeth II. It
                        could also offer interesting proposals for fixing the
                        gender gap, such as by using party list proportional
                        representation (where seats are allocated to parties
                        based on vote share to distribute to candidates on the
                        parties' electoral lists), and mandating that parties
                        include more females in their party lists.
                        <br>
                        <br>
                        <li> The race and constituency data in the candidates
                        dataset can be used to answer the question 'how
                        effective has the GRC system been at enabling minority
                        representation in Parliament?' This is of public interst
                        to Singaporeans as ensuring minority representation in
                        Parliament has been a key defence of the contentious GRC
                        system, but has yet to be investigated in a rigourous
                        empirical way, at least among the wider public as
                        opposed to academia (to my knowledge).
                        <br>
                        <br>
                        A feature piece could explore GRC candidatures in 2020,
                        2015, and 2010 using the candidates dataset and
                        additional data of previous recent elections. This will
                        help establish whether the GRC system has indeed led to
                        a Parliamentary racial composition reflective of
                        Singaporean society, or its vision for the national
                        legislature.
                        <br>
                        <br>
                        Investigating SMC candidatures of these elections will
                        help provide insight into whether the default and often
                        discussed alternative of reverting to just SMCs will
                        reintroduce minority underrepresentation in Parliament.
                        This provides a credible test of the common
                        counterargument to the GRC system that 21st Century
                        Singaporean voters are race-blind voters.
                    </ol>
                    <br>
                    <br>
                    Other suggestions:
                    <br>
                    <br>
                    <ul>
                        <li>Demographic shift in background over generations of
                        politicians (e.g. more diversity in gender, background
                        of newer generation of politicians)
                        <li>Differences in mix of backgrounds between political
                        officeholders and MPs who just serve as MPs.
                        <li> Is the gender gap in politics in Singapore, the
                        region, and globally similar to the gender gap in
                        corporate leadership? A similar exploration to this one
                        into corporate leadership could shed light on this and
                        offer an interesting comparison of the dynamics within
                        these different spheres of society.
                    ")
                )
            ),
            fluidRow(
                box(width = 12,
                    title = "Point out at least two issues you encounter and
                    how you might resolve them, given time and resources?",
                    HTML("
                    <ol>
                        <li> I would have preferred two separate pages and
                        integrating a link into both stories referencing one
                        another (at headline, and mid story where relevant), as I
                        envision would be done on the ST site. However, this
                        solution allows me to avoid having to host two different
                        tools, which will cost me money on shinyapps.io.
                        <li> As Singapore is a small country, it is not very
                        visible on the world map when it is zoomed out. Thus, it
                        is difficult to compare Singapore with other countries
                        of interest, especially outside South East Asia, on the
                        map tool. This is addressed here with a second minimap
                        of Singapore. I think it would have been more ideal to
                        have this map imposed over the first map as a
                        \"zoom in\" on Singapore in the Southern Indian Ocean.
                        <li>
                    </ol>")
                )
            )
        ),
        tabItem(
            tabName = "story",
            fluidRow(
                box(width = 6,
                    title = "",
                    HTML("<style>
                          .aligncenter {text-align: center;}
                          </style>
                         <h2>More Women in Parliament Over the Years</h2>
                         <h4>But still room for progress as key positions
                         remain dominated by men</h4>
                         <br>
                         <br>
                         <p class ='aligncenter'>
                         <img src = 'https://i.ibb.co/RvB29VW/53303451-2699929093357376-3238077502035329024-n.jpg'>
                         <br>
                         <em>Singapore's Female MPs in 2019. (PHOTO: Indranee Rajah's Facebook Page)</em>
                         </p>
                         <br>
                         <br>
                         <p>In recent years, women have become increasingly
                         present in Singapore's public sphere. From GE2015 till
                         today, Singapore elected its first female head of
                         state, appointed 9 women as political officeholders,
                         and increased the share of women in Parliament in
                         GE2020.
                         <a href = 'https://www.channelnewsasia.com/news/singapore/ge2020-record-number-women-parliament-mps-singapore-12940394'>
                         There are now 27 female elected members of
                         Parliament, about 29% of seats, compared to 21 out of
                         89 seats (23.5%) in the previous session of Parliament
                         in 2015.</a> This is a sharp contrast to the complete
                         absence of female representation in 1970-1984.
                         Political parties have also increased the number of
                         female candidates put up for election. In 2015,
                         there were 35 female political candidates, while 2020
                         saw 40 female candidates. Red Dot United, a new
                         political party that had its first contest in GE2020,
                         even had 40% of its candidates as women.
                         </p>
                         <p>However, the pace of change has been slower in the
                         Cabinet. Despite a growing Cabinet, from 19 in the
                         previous government to 20 after GE2020, Singapore
                         remains with 3 female full cabinet Ministers -
                         Josephine Teo, Grace Fu, and Indranee Rajah.
                         Furthermore, it was also
                         <a href= 'https://www.womensaction.sg/article/politics'>
                         only in 2009, that Singapore had its first female
                         cabinet Minister, Lim Hwee Hua,
                         </a>
                         and less than 5 years ago,
                         <a href = 'https://www.straitstimes.com/singapore/two-women-ministers-in-cabinet-for-first-time'>
                         in 2017, that Singapore first had two female cabinet
                         ministers.
                         </a>
                         </p>
                         "),
                    #Insert Visualisation
                    HTML("
                         <br>
                         <br>
                         <h5><strong>The Importance of Female Voices</strong></h5>
                         <br>
                         Growing female representation in Parliament has been
                         welcomed across the political spectrum. Opposition and
                         ruling party politicians have noted that women bring
                         value to the Parliamentary process by introducing
                         perspectives and issues that may otherwise be
                         overlooked.
                          <a href = 'https://www.channelnewsasia.com/news/singapore/ge2020-record-number-women-parliament-mps-singapore-12940394'>
                         Ms. Hazel Poa, a non-constituency MP from the newly
                         formed Progress Singapore Party, told CNA that the
                         increease in female representation is a \"good
                         development\", highlighting issues such as domestic
                         abuse, family-friendly workplace policies, and
                         recognition for caregivers. On the side of the PAP, Ms.
                         Carrie Tan, an MP for Nee Soon GRC, stated that women
                         can be \"more emphatic\" in interpreting policies,
                         particularly for issues related to the family and
                         caregiving.
                         </a>
                         <br>
                         <br>
                         The influence of growing female representation in politics
                         on political discourse in society has also not escaped
                         political observers.
                         <a href = 'https://asia.nikkei.com/Politics/Singapore-election/Singapore-s-record-40-female-candidates-change-election-discussion'>
                         Corinna Lim, executive director of the Association of
                         Women for Action and Research, or Aware, a gender
                         equality advocacy group, has noted that increased
                         female representation amongst political parties has
                         likely had a hand in the greater attention paid to
                         gender issues by major potlical parties in GE2020.
                         Female politicians are also more likely to address
                         issues such as mental health and single parenthood,
                         which \"non-female politicians in Parliament probably
                         don't want to address\", according to Tania Lim, a
                         Professor at Murdoch University.
                         </a>
                         <br>
                         <br>
                         Why
                         <br>
                         https://asia.nikkei.com/Politics/Singapore-election/Singapore-s-record-40-female-candidates-change-election-discussion
                         'There'll be less attention to the fact that a person is female and she'll be judged on her own terms.'
                         It's a reflection of how harsh the public can be to female politicians
                         Female politicians have also faced online harassment with gendered language.
                         ")
                )
            )
        ),
        tabItem(
            tabName = "explore",
            fluidRow(
                HTML("<style>.aligncenter {text-align: center;}</style>
                     <h2><p class = 'aligncenter'>Explore Female Representation Over the Years</p></h2>"),
                box(width = 10,
                    title = "Select a Year",
                    sliderInput(
                        inputId = "year_select",
                        label = NULL,
                        min = 1997,
                        max = 2020,
                        value = 1997,
                        step = 1,
                        ticks = FALSE,
                        width = "100%",
                        round = TRUE,
                        sep = ""),
                    HTML("<h3>In the Legislatures of...</h3>"),
                    HTML("<h3>Singapore</h3>"),
                    leaflet::leafletOutput("leaflet_sg_map", width = 160, height = 70),
                    HTML("<h3>And the World</h3>"),
                    leaflet::leafletOutput("leaflet_world_map", height = 600),
                    HTML("<br><br>"),
                    box(width = 4,
                        title = "Ranking of Female Legislative Representation by Country",
                        DT::dataTableOutput("women_legis_table"),
                        HTML("<p style='font-size:10px;'>Data from the World Bank</p>")
                        ),
                    box(width = 8,
                        title = "Trends in Female Representation in Regional and Global Powers",
                        pickerInput(
                            inputId = "country_select_2",
                            label = "Click bar to select Countries for Comparison:", 
                            choices = countries_dropdown_line_graph,
                            options = list(`actions-box` = TRUE, size = 5), 
                            multiple = TRUE),
                        plotOutput("countries_line_graph"),
                        HTML("<p style='font-size:10px;'>Data from the World Bank</p>")
                        )
                    ),
                box(width = 2,
                    title = "In Key Positions in Regional and Global Powers",
                    selectInput(inputId = "country_select_1",
                                label = "Country:",
                                choices = countries_dropdown,
                                selected = "Singapore", multiple = FALSE,
                                selectize = TRUE, width = NULL, size = NULL),
                    htmlOutput("women_power"),
                    HTML("<p style='font-size:10px;'>(PHOTOS: WIKIPEDIA, FACEBOOK, VARIOUS LEGISLATURE WEBSITES)</p>")
                    )
                )
            )
    )
)



ui <- dashboardPage(header, sidebar, body)
