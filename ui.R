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
                                   "OECD Members" = "OED",
                                   "East Asia and Pacific" = "EAS",
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
                    <p style = 'font-size: 16px;'>
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
                    <p style = 'font-size: 16px;'>
                    I believe that the the key point of this story is
                    the shifting landscape of society in Singapore, regionally,
                    and globally towards one of greater female political
                    participation. Women leaders and legislators are no longer a
                    surprising exception in politics, but are regarded as 
                    bringing important perspectives. However, despite this 
                    increase in female political participation, politics remains
                    male dominated.
                    </p>
                    <p style = 'font-size: 16px;'>
                    I felt that the shifting composition of legislatures and 
                    key political office holders can be used as an illustration 
                    of this trend around the world. This can be reinforced by a 
                    feature story that explores the issue more deeply in its 
                    manifestation in Singapore through prose. 
                    </p>
                    <p style = 'font-size: 16px;'>
                    This is the approach adopted here in my response - 
                    Independent yet complementary pieces.
                    </p>
                    <p style = 'font-size: 16px;'>
                    The interactive tool takes a \"science centre\" approach of 
                    providing interactive tools for exploration, curated to 
                    guide users who play with the tool to gain two key takeaways.
                    Firstly, that female political representation is growing 
                    globally, including in nations of key interest to Singapore
                    (countries in the region, major powers, places with a large
                    overseas Singaporean population), and secondly, that 
                    this progress is occurring at different rates in different 
                    countries. The world map shows the macro-level global trend. 
                    As users move the slider, they should be able to see red 
                    giving way to green across the world, a visual illustration 
                    of growing global female political representation in the 
                    21st Century. The smaller Singapore map offers a comparison
                    between Singapore and other nations, indicating how 
                    Singapore and other nations are progressing at different 
                    rates. The graph and table below these maps reinforces 
                    this point by providing means of explicit ranking and 
                    comparison between nations the user is interested in and 
                    global benchmarks.
                    The portion on Women In Key Positions in Regional and Global
                    Powers tells this same story using a qualitative rather 
                    than quantitative approach. By recognising famous faces and
                    names, and seeing the positions of female political figures 
                    in each country, users are shown how women are 
                    increasingly holding influential political office. They also
                    gain a sense of how the rate and consistency at which this 
                    is happening differs between nations since the reader can 
                    tell from knowing the people or seeing their positions that
                    the influence of the women listed in each country clearly
                    differ.
                    </p>
                    <p style = 'font-size: 16px;'>
                    The main story is a more traditional feature story, focusing 
                    on the specific case of Singapore. Readers can either come 
                    to this as a deep dive into the issues they experienced 
                    in the interactive tool focusing on the case of Singapore, 
                    or go from this article to the interactive tool as a broader 
                    global exploration of the ideas explored in the article. The
                    piece offers a closer exploration into female political 
                    representation in Singapore. This exposition covers 
                    Singapore's experience in comparison to global benchmarks,
                    reasons for the political gender gap, and spurs readers'
                    thoughts on what society's response to the closing but still
                    present political gendder gap should be, in attempt to spark
                    informed discussion on the topic in society.
                    </p>")
                )
            ),
            fluidRow(
                box(width = 12,
                    title = "A completed data visualisation that would be the
                    feature of the piece",
                    HTML("
                    <p style = 'font-size: 16px;'>
                    Find this in the section titled Interactive Tool. 
                    <br>
                    <br>
                    <em>Note: I host the data that I used for visualisations on
                    <a href = 'https://github.com/timothyLeeXQ/Gender_representation_in_Legislatures'>
                    this GitHub repo</a> (that I intend to clean up!).
                    Data and information sources are 
                    attributed to the best of my knowledge and ability - aside 
                    from the provided data, I used data from Wikipedia, national 
                    legislature websites, international organisations like the UN,
                    and Facebook posts. I also used articles from various 
                    publications and organisations (linked in the main story where 
                    relevant) as sources of information and quotes.
                    </em>
                    </p>
                         ")
                )
            ),
            fluidRow(
                box(width = 12,
                    title = "Headline, deck, and any subheadings where needed.
                    Write at least 1 or 2 paragraphs where necessary.",
                    HTML("
                    <p style = 'font-size: 16px;'>
                    I have included headlines and subheadings in both
                    the story on Singapore and the interactive tool.
                    I think that on the homepage that links to these, the decks
                    should be drafted separately from the subheadings to provide
                    more of a summary of what the reader is going to get and entice
                    clicks, rather than expand on the headline.</p>
                    <p style = 'font-size: 16px;'>
                    Here is my idea for Decks for the:
                    </p>"
                         ),
                    box(width = 6,
                        title = "Main Story",
                        HTML("
                        <h2>Growing Number of Women in Singapore Politics</h2>
                        <p style = 'font-size: 16px;'>
                        Female representation in Singapore's political
                        sphere is increasing, but men still dominate.
                        We track the progress so far in closing the 
                        political gender gap, investigate its causes,
                        and ask what more should be done.
                        </p>"
                        )
                    ),
                    box(width = 6,
                        title = "Interactive Tool",
                        HTML("
                        <h2>Explore Female Representation Over the Years</h2>
                        <p style = 'font-size: 16px;'>
                        Use interactive tools to explore trends
                        in female political representation in Singapore, the 
                        region, and the globe.
                        </p>")
                    )
                    
                )
            ),
            fluidRow(
                box(width = 12,
                    title = "A sketch or rough plan on other points you would 
                    explore in the story.",
                    HTML("
                    <p style = 'font-size: 16px;'>
                    I tried my best to present a complete product for submission.
                    In terms of content I think that any additional material 
                    might be superfluous and detract from the intended narrative.
                    However, I do think that three could be two main things 
                    that I would explore further if I had the time and chance to
                    do so.
                    </p>
                    <p style = 'font-size: 16px;'>
                    First, the main story would benefit from presentation of
                    more in depth data of Singapore's Parliament, government 
                    leadership, and political candidates, perhaps through an 
                    interactive tool that allows exploration of the data to allow 
                    readers to really see the composition of the political scene
                    in Singapore beyond simple line graphs.
                    </p>
                    <p style = 'font-size: 16px;'>
                    I think this piece would also benefit from a more informed 
                    exposition into the potential reasons and solutions to the 
                    political gender gap. This may be supported by visual 
                    presentation of correlations of female political 
                    representation in different countries/years with indices 
                    that academics have discussed - in the style of the 
                    Economist. Unfortunately I had no time to delve into the 
                    research behind the political gender gap and offer a more 
                    academic exploration of the issue that I think would be 
                    insightful to readers.
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
                        <li> 
                        <p style = 'font-size: 16px;'>
                        The candidates dataset can be used to answer the
                        question: 'What is the mix of backgrounds of Singapore's
                        MPs and Cabinet?' This can be explored as a separate
                        deep-dive feature piece by using the data to visualise
                        the distribution of our representatives' schooling
                        (elite/non-elite schools), degrees, and professional
                        background.
                        </p>
                        <p style = 'font-size: 16px;'>
                        This is worth exploring as there is a known but still
                        relatively underdiscussed notion that Singapore's elite,
                        from which most of our politicians are drawn, come from
                        a small set of schools, academic training, and
                        professional backgrounds. This is likely reflected in
                        our legislature and Cabinet. An underrepresentation of
                        certain backgrounds in our government and legislature
                        has clear implications on society in terms of the ability
                        of our representatives and leaders to understand the 
                        diversity of people who are affected by the laws and 
                        policies they create. This issue is also of public 
                        interest as the background of our parliamentarians 
                        has large implications on the dynamics of Parliamentary 
                        discourse.
                        </p>
                        <li> 
                        <p style = 'font-size: 16px;'>
                        The candidates dataset and similar data from other 
                        general elections can be used to explore the question 
                        of 'To what extent do politicians change the 
                        constituency they want to represent between elections?' 
                        This question can also be explored in an interactive 
                        storytelling piece tracking the movement of candidates 
                        in different elections. An interactive tool can guide 
                        users to select a candidate, and then show where they 
                        have stood for election, and chart their journey across 
                        the island in their quest for office.
                        </p>
                        <p style = 'font-size: 16px;'>
                        This question is worth exploring as politicians and the
                        Singaporean electorate have long been conscious about
                        the tension between the fragility of local 'town'
                        community in a city state where MPs do not need
                        to live in their constituency, and the emphasis on local
                        towns in the town council system and electoral boundaries
                        that come into focus when election season arrives.
                        Politicians have to weigh the calculus between building
                        a localised base of support by staying with a
                        constituency for a long time, and capitalising on the
                        opportunity of introducing star power into a
                        constituency to improve one's chances of victory.
                        Understanding how politicians weigh this tradeoff,
                        provides some insight into their sense of ownership of
                        the communities that the help build in their time
                        working the ground. I feel this is of great public
                        interest for Singaporeans.
                        </p>
                        <li>
                        <p style = 'font-size: 16px;'>
                        The Seats by Women dataset can be combined with
                        data on the countries' political environment (electoral
                        system - first past the post, proportional
                        represetation, state system - Marxist-Leninist, Liberal
                        Democracy, history of the state - former Soviet, former
                        British colony, etc.) as an extension of the present
                        piece on women in Parliament. These differences between
                        states could offer more insight into why female
                        representation in legislatures differs between countries
                        than what is provided here, that could lead into another
                        feature piece alongside the one on Singapore. 
                        For instance, perhaps former British colonies are more 
                        willing to accept female leaders having been more tuned 
                        in to the time of Thatcher, and the influence of Queen 
                        Elizabeth II. It could also offer interesting proposals 
                        for fixing the gender gap into the piece about Singapore 
                        under 'What More Should be Done?', such as by using 
                        party list proportional representation (where seats are
                        allocated to parties based on vote share to distribute to 
                        candidates on the parties' electoral lists), and 
                        mandating that parties include more females in their 
                        party lists.
                        </p>
                        <li>
                        <p style = 'font-size: 16px;'>
                        The race and constituency data in the candidates
                        dataset can be used to answer the question 'how
                        effective has the GRC system been at enabling minority
                        representation in Parliament?' This supplements the 
                        discussion of GRCs in the Main Story, and is of public
                        interest to Singaporeans as ensuring minority 
                        representation in Parliament has been a key defence of 
                        the contentious GRC system, but has yet to be 
                        investigated in a rigourous empirical way, at least 
                        among the wider public as opposed to academia (to my 
                        knowledge).
                        </p>
                        <p style = 'font-size: 16px;'>
                        A feature piece could explore GRC candidatures in 2020,
                        2015, and 2011 using the candidates dataset and
                        additional data GE2011 and GE2020. This will
                        help establish whether the GRC system has indeed led to
                        a Parliamentary racial composition reflective of
                        Singaporean society, or its vision for the national
                        legislature.
                        </p>
                        <p style = 'font-size: 16px;'>
                        Investigating SMC candidatures of these elections will
                        help provide insight into whether the default and often
                        discussed alternative of reverting to just SMCs will
                        reintroduce minority underrepresentation in Parliament.
                        This provides a credible test of the common
                        counterargument to the GRC system that 21st Century
                        Singaporean voters are race-blind voters.
                        </p>
                    </ol>
                    <p style = 'font-size: 16px;'>Other suggestions:</p>
                    <ul>
                        <li>
                        <p style = 'font-size: 16px;'>
                        Demographic shift in background over generations of
                        politicians (e.g. more diversity in gender, background
                        of newer generation of politicians)
                        </p>
                        </li>
                        <li>
                        <p style = 'font-size: 16px;'>
                        Differences in mix of backgrounds between political
                        officeholders and MPs who just serve as MPs.
                        </p>
                        </li>
                        <li>
                        <p style = 'font-size: 16px;'>
                        Is the gender gap in politics in Singapore, the
                        region, and globally similar to the gender gap in
                        corporate leadership? A similar exploration to this one
                        into corporate leadership could shed light on this and
                        offer an interesting comparison of the dynamics within
                        these different spheres of society.
                        </p>
                        </li>
                    </ul>
                    ")
                )
            ),
            fluidRow(
                box(width = 12,
                    title = "Point out at least two issues you encounter and
                    how you might resolve them, given time and resources?",
                    HTML("
                    <ol>
                        <li><p style = 'font-size: 16px;'>
                        I would have preferred two separate pages and
                        integrating a link into both stories referencing one
                        another, as I envision would be done on the ST site. 
                        However, I originally thought I would use interactive 
                        elements in the main story as well, and hence wanted to 
                        keep it on Shiny instead of just making a separate 
                        document. With that consideration in mind, the current 
                        solution allows me to avoid having 
                        to host two different Shiny Applications, but forces me
                        to ask users to find the link on the sidebar instead 
                        of providing a direct link. Given more time and resources,
                        I would have made a separate page for the main story and
                        provide explicit links between the interactive tool and
                        story.</p></li>
                        <li> 
                        <p style = 'font-size: 16px;'>As Singapore is a small country, 
                        it is not very visible on the world map - the .geojson 
                        I found online and used does not even draw Singapore
                        as a separate country (it is obscured by the line for 
                        Malaysia). Thus, it is difficult to compare Singapore 
                        with other countries of interest. This is 
                        addressed here with a second minimap of Singapore. Given
                        more time, expertise, and resources, I would have wanted 
                        wanted the Singapore minimap to be imposed over the first 
                        map as a \"zoom in\" on Singapore, and placed this over 
                        blank space in the map (e.g. in the Southern Indian Ocean).
                        This would provide a cleaner map viewing experience for 
                        users.</p></li>
                        <li>
                        <p style = 'font-size: 16px;'>
                        Third, I think that the visual improvements to the graphs
                        and layout would definitely be beneficial to the visual 
                        quality and professional look of the submission. I was 
                        restricted by the Shinydashboard layout due to familiarity 
                        that I was unwilling to branch out of given time constraints.
                        Given more time and resources, an exploration of other 
                        tools and tweaks to the Shiny interface may have helped 
                        make the end product look more professional. </p></li>
                        <li>
                        <p style = 'font-size: 16px;'>
                        Fourth, ensuring both the interactive tool and
                        main story would be viewable on mobile was a struggle 
                        towards the end of the project - I think I made it mostly
                        viewable, but far from an optimised experience. Given 
                        more time and resources, I think that it would be 
                        useful to take more time to improve the mobile experience 
                        through more tests to uncover issues with the mobile 
                        presentation that can be worked on would boost the 
                        experience for those who would read the piece on their 
                        phones. A more long term alternative may be create 
                        and test templates that ensure mobile optimisation, or 
                        use more tools that are better optimised for mobile (e.g.
                        highcharts, which I use for graphs in my previous work 
                        on Shiny, seemed to work a lot better on mobile than 
                        the quick and dirty GGPlot graphs that I used here for
                        expediency. I hesitated to use highcharts at first as I
                        wanted to ensure I could get the visualisations I wanted
                        and didn't want to risk not knowing how to do so in 
                        Highcharts. However, I probably wated more time trying 
                        to fix the mobile experience with the ggplot graphs than
                        I would have using Highcharts to begin with).
                        </p>
                        <li>
                        <p style = 'font-size: 16px;'>
                        Finally, writing the main story was challenging without 
                        having the time to do proper research or get expert 
                        opinions. Here, I relied a lot on general knowledge to 
                        craft the narrative, and used quotes and information
                        from other articles on political gender representation
                        to drive the main article. Given more time and resources,
                        I would have preferred to do more data collection, and 
                        craft and deliver the story with the aid of insight from
                        experts gained from interviews.
                        </p>
                        </li>
                    </ol>")
                )
            )
        ),
        tabItem(
            tabName = "story",
            fluidRow(
                box(width = 6,
                    title = NULL,
                    HTML("<style>
                          .aligncenter {text-align: center;}
                          </style>
                         <h1>Growing Number of Women in Singapore Politics</h1>
                         <p style = 'font-size: 20px;'>
                         Clear growth in female representation in Parliament,
                         but politics remains dominated by men</p>
                         <br>
                         <br>
                         <p class ='aligncenter'>
                         <img style='height: 80%; width: 80%; object-fit: contain' src = 'https://i.ibb.co/RvB29VW/53303451-2699929093357376-3238077502035329024-n.jpg'>
                         <br>
                         <em>Singapore's Female MPs in 2019. (PHOTO: Indranee Rajah's Facebook Page)</em>
                         </p>
                         <br>
                         <br>
                         <p style = 'font-size: 16px;'>
                         In recent years, women have become increasingly
                         present in Singapore's public sphere. In the last 5 years,
                         Singapore elected its first female head of state, 
                         increased the share of women in Parliament, and 
                         now has
                         <a href = 'https://www.straitstimes.com/politics/nine-out-of-37-political-office-holders-are-women'>
                         9 female MPs as political officeholders.
                         </a>
                         This is a sharp contrast to the 
                         <a href = 'https://www.womensaction.sg/article/politics'>
                         complete absence of female Parliamentary representation 
                         in 1970-1984. </a>
                         </p>
                         <p style = 'font-size: 16px;'>
                         Much of this gain has been made in the most recent 
                         general election.
                         <a href = 'https://www.channelnewsasia.com/news/singapore/ge2020-record-number-women-parliament-mps-singapore-12940394'>
                         In the 14th Parliament formed after GE2020, there are 
                         27 female elected MPs, about 29% of seats, 
                         up from 23.5% (21 out of 89) in the previous session of
                         Parliament in 2015.</a>
                         Political parties have also increased the number of
                         female candidates put up for election.
                         <a href = 'https://asia.nikkei.com/Politics/Singapore-election/Singapore-s-record-40-female-candidates-change-election-discussion'>
                         In 2015, there were 35 female political 
                         candidates, while 2020 saw 40 female candidates. </a>
                         </p>
                         <p style = 'font-size: 16px;'>
                         Progress has also been made in Government, where the
                         number of female political officeholders has grown to 9,
                         up from 6 just after GE2015. Singapore also now has 3
                         full cabinet ministers - Josephine Teo, Grace Fu, and
                         Indranee Rajah,
                         <a href= 'https://www.womensaction.sg/article/politics'>
                         first gaining a  first female cabinet minister in 2009, 
                         when Lim Hwee Hua was appointed Minister in the Prime 
                         Minister's Office.
                         </a>
                         </p>
                         <br>
                         "),
                    plotOutput("SG_Parl_Graph"),
                    HTML("<p style = 'font-size: 16px;'>
                         <strong>Gender Representation in Politics Around 
                         the World</strong></p>
                         <p style = 'font-size: 16px;'>
                         Singapore's growth in female Parliamentary representation
                         has kept pace with global trends. 
                         <a href = 'https://data.worldbank.org/indicator/SG.GEN.PARL.ZS'>
                         Data from the World Bank </a>
                         indicates that just as Singapore's share of women
                         in Parliament has increased from 23% to 29% in the past
                         decade, the OECD average (OECD members are largely 
                         comprised of high-income developed countries), has 
                         increased from 23% to 31%. 
                         These trends are slightly ahead of the global average 
                         and average across East Asian and Pacific countries,
                         which has increased from 19% to 25% and 17 to 21% 
                         respectively over the same period.
                         </p>
                         <br>"),
                    plotOutput("sg_line_graph_comparison"),
                    HTML("<br>
                         <p style = 'font-size: 16px;'>
                         However, such benchmark comparisons are only part of
                         the picture. Singapore continues to lag behind major 
                         European nations such as France, Germany, and the UK. 
                         Furthermore, although countries in the region such as
                         Indonesia, South Korea, and Thailand lag behind 
                         Singapore in female legislative representation, these 
                         countries have all had female heads of government. 
                         Despite having a female head of state, Singapore's 
                         female political leaders have scarcely been discussed 
                         as candidates for Prime Minister or Deputy Prime Minister.
                         Women taking up key roles in government is also a 
                         relatively recent development in Singapore. It has 
                         only been 3 years since Singapore first had 2 women in
                         Cabinet, and barely over a decade since its first female
                         Cabinet minister.
                         </p>
                         <br>"),
                    box(width = 12,
                        title = NULL,
                        HTML("<h2>Explore Female Representation Over the Years</h2>
                            <p style = 'font-size: 16px;'>
                            Click on \"Interactive Tool\" in the sidebar for 
                            an interactive experience to learn more about
                            the trends in female political representation 
                            in the region and the globe</p>")
                        ),
                    HTML("<p style = 'font-size: 16px;'>
                         <strong>Being a Woman in Politics</strong>
                         </p>
                         <p style = 'font-size: 16px;'>
                         While the trend of increasing female participation in 
                         politics is clear, female political representation in
                         many nations and metrics remains shy of the 
                         <a href = 'https://www.unwomen.org/en/what-we-do/leadership-and-political-participation/global-norms-and-standards'>
                         30% guideline for women in leadership positions adopted 
                         in a 1990 UN resolution</a>, and a far cry from gender 
                         parity. Singapore would need to more than double its
                         current number of female cabinet ministers to achieve 
                         the 30% guideline, and triple it to attain gender 
                         parity in Cabinet.
                         </p>
                         <p style = 'font-size: 16px;'>
                         What could explain the continued political gender gap? 
                         The societal culture may be an important factor. 
                         In societies with more traditional East Asian cultures 
                         like Japan, female politicians remain rare despite 
                         prominent figures such as Yuriko Koike, the Tokyo 
                         Governor who was touted to challenge then Japanese 
                         Prime Minster Shinzo Abe during the 2017 election. 
                         According to the World Bank data, female representation
                         in the Japanese Diet remained at around 10% in the
                         past 20 years, with women facing impediments such as 
                         the dominance of men in political parties and traditional 
                         familial roles. Mieko Nakabayashi, a former Japanese 
                         politician, noted that
                         <a href = 'https://www.dw.com/en/japanese-women-struggle-to-have-a-voice-in-politics/a-45767961'>
                         women are often tied down by 
                         familial roles such as childrearing to take on an active
                         political career.</a> 
                         Even in countries that do better in female political
                         representation, women politicians still have to 
                         struggle with their familial roles. Jacinda Arden, New 
                         Zealand's New Prime Minister, and Tin Pei Ling, a 
                         Singaporean MP, both have had to balance their roles 
                         as new mothers with challenging political careers. In 
                         Singapore,
                         <a href = 'https://www.womensaction.sg/article/politics'>
                         Ms Grace Fu, a PAP politician, believes that
                         the transferral of some of these familial roles to the 
                         husband as a woman takes on a political career also forms
                         part of the challenge for women entering politics.
                         </a>
                         </p>
                         <p style = 'font-size: 16px;'>
                         A related concern is the political culture of the 
                         country. In Singapore, female politicians have often 
                         had to deal with gender-based perceptions. Nicole Seah, 
                         now a Workers Party politician, was mocked for tearing 
                         up during her political debut with the National 
                         Solidarity Party in the 2011 General Election. In the same year,
                         Ms Tin as a first time PAP candidate, had to deal with public 
                         criticism of a photo she took with a Kate Spade handbag.
                         Female politicians have also often had to deal with 
                         questions about their family life. 
                         <a href = 'https://www.womensaction.sg/article/politics'>
                         For instance, in GE2015, Ms Tin's new role as a mother
                         was referred to  as a \"weakness\"
                         </a>. However, family issues are often less of an issue
                         for male politicians, 
                         <a href = 'https://www.nytimes.com/2019/06/16/us/politics/democratic-candidates-fathers-day.html'>
                         even in the US
                         </a>.
                         </p>
                         <p style = 'font-size: 16px;'>
                         <strong>What More Should be Done?</strong>
                         </p>
                         <p style = 'font-size: 16px;'>
                         Given the challenges facing female politicians, what 
                         more should be done to raise female representation in
                         politics?
                         </p>
                         <p style = 'font-size: 16px;'>
                         Encouraging greater female political representation has
                         often been viewed as a worthy cause given the value of
                         female perspectives in politics, the legislative process,
                         and government. 
                         <a href = 'https://www.un.org/womenwatch/daw/egm/eql-men/index.html'>
                         The UN's 30% guideline is based on the 
                         belief that a \"critical\" mass of female representation 
                         is needed for there to be a tangible impact on the
                         political process
                         </a>. In Singapore, female MPs have noted that women can
                         play a role in Parliament by drawing attention to 
                         issues that may be otherwise overlooked, or by bringing
                         a different point of view.
                         <a href = 'https://www.channelnewsasia.com/news/singapore/ge2020-record-number-women-parliament-mps-singapore-12940394'>
                         Ms Hazel Poa, a non-constituency MP from the newly
                         formed Progress Singapore Party, told CNA that the
                         increease in female representation is a \"good
                         development\", highlighting issues such as domestic
                         abuse, family-friendly workplace policies, and
                         recognition for caregivers. Ms Carrie Tan, a PAP MP for
                         Nee Soon GRC, stated that women can be \"more 
                         emphatic\" in interpreting policies, particularly for 
                         issues related to the family and caregiving.
                         </a>
                         </p>
                         <p style = 'font-size: 16px;'>
                         Others note that more female politicians will normalise
                         women in politics, and allow women to be evaluated as
                         politicians similarly to men. 
                         <a href = 'https://asia.nikkei.com/Politics/Singapore-election/Singapore-s-record-40-female-candidates-change-election-discussion'>
                         Ms Corinna Lim, executive director of the Association 
                         of Women for Action and Research, or AWARE, a women's 
                         advocacy group in Singapore, said that \"When you have 
                         that critical mass...there'll be less attention to
                         the fact that a person is female and she'll be judged 
                         on her own terms\".
                         </a>
                         </p>
                         <p style = 'font-size: 16px;'>
                         In Singapore, the discourse surrounding the value of 
                         diversity in politics is age old, albeit in a different 
                         flavour. Many arguments have also been made regarding 
                         minority racial representation in political offices, 
                         and explicit measures have been taken to ensure 
                         representation of minority races in Parliament and from 
                         time to time, the elected Presidency. The Group 
                         Representation Constituency (GRC) system, a main 
                         feature of Singaporean General Elections, was
                         conceived as a means to ensure minority representation 
                         in Parliament by mandating that candidates for a 
                         constituency be fielded as a team, including at least 
                         one minority race candidate. For the Elected Presidency, 
                         the reserved Presidential Election system ensures that if 
                         there have been no Presidents from a given racial group 
                         for five terms, the next Presidential Election will 
                         only permit candidates from that racial gorup.
                         </p>
                         <p style = 'font-size: 16px;'>
                         With this precedent, it is possible that similar 
                         measures may be deployed to ensure greater female political 
                         representation. For instance, the GRC system could 
                         mandate at least one female candidate in each
                         GRC. While most GRC teams already include women, this
                         will guarantee female representation in Parliament from
                         the constituency, regardless of which political party
                         wins the election, without being too disruptive to the
                         political process. Increasing this requirement to two
                         females per GRC will further increase the number of 
                         female parliamentarians. With 17 GRCs in 2020, requiring
                         two female candidates per GRC would guarantee 
                         34 female elected MPs in Parliament, already 
                         more than the current 27 female elected MPs.
                         </p>
                         <p style = 'font-size: 16px;'>
                         Other political mechanisms such as the non-constituency
                         MP (NCMP) system and nominated MP (NMP) system could 
                         also be used to bring female representation into 
                         Parliament. In the 13th Parliament just before GE2020, 
                         already 5 out of 9 NMPs were female. Fixing such a
                         proportion as a benchmark for future NMP or NCMP 
                         nominations could provide another means of increasing
                         female Parliamentary representation.
                         </p>
                         <p style = 'font-size: 16px;'>
                         Adopting these ideas to achieve benchmark levels of
                         female representation may be possible, but may not
                         be the best option for Singapore's politics. 
                         While the benefits of greater female representation 
                         are clear, many caution against excessive obsession
                         with the issue of greater gender diversity in politics.
                         <a href = 'https://www.channelnewsasia.com/news/singapore/ge2020-record-number-women-parliament-mps-singapore-12940394'>
                         When asked whether gender parity in Parliament should 
                         be a main goal for Singapore, most respondents to
                         Channel News Asia said no. Joan Pereira, MP for 
                         Tanjong-Pagar GRC, noted that \"we should not be too 
                         obsessed with percentages and numbers\" even as we
                         celebrate the increasing number of female MPs, as 
                         bringing in female politicians should be driven by 
                         genuine effort to find women who can contribute to 
                         Singapore rather than chasing statistics. This is 
                         reinforced by party-mate Rahayu Mahzam, MP for Jurong 
                         GRC, who noted that what is more important is for
                         Singapore's political representatives to be \"the 
                         best people who can represent different groups 
                         within the community\"
                         </a>.
                         </p>
                         ")
                )
            )
        ),
        tabItem(
            tabName = "explore",
            fluidRow(
                HTML("<style>.aligncenter {text-align: center;}</style>
                     <h1><p class = 'aligncenter'>Explore Female Representation Over the Years</p></h1>"),
                box(width = 12,
                    title = NULL,
                    HTML("<h4>
                         <ul>
                            <li>Use the tools below to learn about the trends in female political representation and key women in politics around the world</li>
                            </br>
                            <li>Click on \"Main Story\" in the sidebar to read about women in Singapore Politics</li>
                         </ul>
                         </h4>")
                    )
            ),
            fluidRow(
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
                        sliderInput(
                            inputId = "year_select_2",
                            label = "Select a Year",
                            min = 1997,
                            max = 2020,
                            value = 1997,
                            step = 1,
                            ticks = FALSE,
                            width = "100%",
                            round = TRUE,
                            sep = ""),
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
                    title = "Women In Key Positions in Regional and Global Powers",
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
