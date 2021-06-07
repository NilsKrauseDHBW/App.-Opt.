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
                  h2("Kernkonzept:"),
                  h2("- Auffindung einer hinreichend guten Lösung, unter Abschätzung eines Zeitaufwandes"),
                  h2("- Einsatz, wenn Optimierung wegen hohem Rechenaufwand scheitert"),
                  h2("- Beispiel dafür Traveling Salesman-Problem")
                  
                ),
                verticalTabPanel("Simualted Annealing und Kernkonzept/Parameter",
                  style = "color:#000;",
                  h2("Kernkonzept:"),
                  h2("- Heuristisches Verfahren, bei dem das Finden eines ungefähres Optimum in einer festen Zeitspanne steht im Vordergrund "),
                  
                  h2("Parameter:"),
                  h2("- Temperatur"),
                  h2("- Wert der Wahrscheinlichkeitsdichtefunktion (WDF)"),
                  h2("- Anzahl absolvierter Schritte"),
                )
                ,
                verticalTabPanel("Simualted Annealing Parameter Temperatur",
                   style = "color:#000;",
                   h2("Parameter Tenperatur:"),
                   h2("- zum Start Initalisierung einer hohen Temperatur"),
                   h2("- Temperatur wird über die Laufzeit inkrementell reduziert"),
                   h2("- je höher Temperatur, desto länger die Laufzeit des Verfahrens")
                )
                ,
                verticalTabPanel("Simualted Annealing Parameter WDF Wert/Anzahl absolvierter Schritte",
                   style = "color:#000;",
                   h2("Parameter WDF Wert:"),
                   h2("- errechnet sich aus der Temperatur und der WDF Formel"),
                   h2("- Temperatur wird über die Laufzeit inkrementell reduziert"),
                   
                   h2("Parameter Absolvierte Schritte"),
                   h2("- zum Start Initalisierung einer hohen Temperatur"),
                   h2("- Erlaubt zwischenzeitlich schlechtere Lösungen -> kommt aus lokalem Optimum wieder heraus")
                )
              ),
              fluidRow(
                column(
                  12, h1("Workflow Simulated Anneling"),
                  br(),
                  img(src = "AppOpt.png")
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
