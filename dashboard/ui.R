# ui.R

# ===================
# UI
ui <- fluidPage("",
  theme = shinytheme("superhero"),
  fluidRow(
    column(8, br(), h1("Simulated Annealing")),
    column(4, br(), img(src = "dhbw_logo.png", height = "75", weight = "125"))
  ),
  br(),
  tabsetPanel(
    type = c("pills"),
    tabPanel("Einführung",
      icon = icon("info"),
      tabsetPanel(
        type = c("pills"),
        tabPanel("Grundlagen",
          icon = icon("far fa-play-circle"),
          fluidRow(
            column(
              12,
              br(),
              verticalTabsetPanel(
                verticalTabPanel("Heuristik",
                  style = "color:#000;",
                  h2("- Ermittlung zulässiger Lösungen von Optmierungsproblemen"),
                  h2("- Optimierung sucht optimale Lösung"),
                  h2("- Heuristik sucht ausreichend gute Lösung"),
                  h2("- Wird eingesetzt wenn Optimierung wegen zu hohem Rechenaufwand scheitert"),
                  h2("- Bsp. Traveling Salesman-Problem")
                ),
                verticalTabPanel("Simualted Annealing",
                  style = "color:#000;",
                  h2("- Vom Abkühlprozess in der Natur inspiriert"),
                  h2("- Erlaubt zwischenzeitlich schlechtere Lösungen -> kommt aus lokalem Optimum wieder heraus")
                )
              )
            )
          ),
        ),
        tabPanel("Graphische Visualisierung",
          icon = icon("far fa-image"),
          fluidRow(
            column(
              12, h1("Graphische Visualisierung"),
              br(),
              img(src = "Gif_Explain.gif")
            )
          ),
        ),
        tabPanel("Weitere Problemstellungen",
          icon = icon("far fa-plus-square"),
          fluidRow(
            column(
              12, h1("Funktionsweise des Algorithmus"),
              br(),
              img(src = "trav_sale.gif")
            )
          ),
        )
      )
    ),
    tabPanel("Daten",
      style = "background-color:#ffff;", icon = icon("table"),
      DT::dataTableOutput("randomDataTable")
    ),
    tabPanel("Funktionsweise",
      icon = icon("robot"),
      tabsetPanel(
        type = c("pills"),
        tabPanel("Optimum",
          icon = icon("signal-slash"),
          fluidRow(
            column(
              12, h1("Lokale und globale Optima"),
              br()
            )
          ),
        ),
        tabPanel("Dummy Code",
          icon = icon("code"),
          fluidRow(
            column(
              12, h1("Funktionsweise des Algorithmus"),
              br(),
              img(src = "algorithm.png")
            )
          ),
        ),
        tabPanel("Beispiel",
          icon = icon("simplybuilt"),
          fluidRow()
        )
      )
    ),
    tabPanel("Praxisbeispiel",
      icon = icon("route"),
      h1("Traveling Salesman Problem")
    )
  )
)
