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
                  h3("- Auffindung einer hinreichend guten Lösung, unter Abschätzung eines Zeitaufwandes"),
                  h3("- Einsatz, wenn Optimierung wegen hohem Rechenaufwand scheitert"),
                  h3("- Beispiel dafür Traveling Salesman-Problem")
                  
                ),
                verticalTabPanel("Simualted Annealing und Kernkonzept/Parameter",
                  style = "color:#000;",
                  h2("Kernkonzept:"),
                  h3("- Heuristisches Verfahren, bei dem das Finden eines ungefähres Optimum in einer festen Zeitspanne im Vordergrund steht"),
                  h2("---"),
                  h2("Parameter:"),
                  h3("- Temperatur"),
                  h3("- Wert der Wahrscheinlichkeitsdichtefunktion (WDF)"),
                  h3("- Anzahl absolvierter Schritte"),
                )
                ,
                verticalTabPanel("Simualted Annealing Parameter Temperatur",
                   style = "color:#000;",
                   h2("Temperatur:"),
                   h3("- zum Start Initalisierung einer hohen Temperatur"),
                   h3("- Temperatur wird über die Laufzeit inkrementell reduziert"),
                   h3("- je höher Temperatur, desto länger die Laufzeit des Verfahrens"),
                   img(src = "Thermometer.png", height = "150", weight = "500")
                )
                ,
                verticalTabPanel("Simualted Annealing Parameter WDF Wert/Anzahl absolvierter Schritte",
                   style = "color:#000;",
                   h2("WDF Wert:"),
                   h3("- errechnet sich aus der Temperatur, Kostenfunktion und der WDF Formel"),
                   h3("- dabei werden die Werte in die Wahrscheinlichkeitsdichteverteilung eingesetzt und das Ergebnis ist dann der WDF Wert"),
                   img(src = "Formel.png", height = "80"),
                   h3("- wie man sieht sinkt mit steigender Temperatur der Wert der der Wahrscheinlichkeitsdichteverteilung übergeben wird"),
                   h2("---"),
                   h2("Absolvierte Schritte:"),
                   h3("- zum Start Initalisierung mit 0"),
                   h3("- pro Iteration Wert um +1 erhöht"),
                )
                ,
                verticalTabPanel("Simualted Annealing Durchführung",
                   style = "color:#000;",
                   h2("Durchführung:"),
                   h3("- Zu Beginn wird mit einer hohen Temperatur gestartet, welche sich iterative verkleinert"),
                   h3("- Das wiederum verkleinert den WDF Wert"),
                   h3("- Das in Kombination mit der steigenden Nummer an zufälligen schritten führt dies dazu das Anfangs viele schritte akzeptiert werden, welche schlechter sind als die vorherigen"),
                   h3("- wohingegen zum ende hin wesendlich weniger schlechte Schritte akzeptiert werden"),
                   h3("- Dieser Abkühlungsprozess, welcher aus der Thermodynamik inspiriert ist, ist namensgebend für das Simualted Anneling"),
              )),
              fluidRow(
                column(
                  12, h1("Workflow Simulated Anneling"),
                  br(),
                  img(src = "AppOpt.png")
                )
              ),
              fluidRow(
                column(
                  12,
                  br(),
                  verticalTabsetPanel(
                    verticalTabPanel("Wahrscheinlichkeit schlechte Schritte durchzuführen",
                     style = "color:#000;",
                     h2("Die Wahrscheinlichkeit schlechte Schritte durchzuführen:"),
                     h3("- Die Wahrscheinlichkeit schlechte Schritte durchzuführen sinkt stetig gegen Null, wenn die Temperatur reduziert wird. In den Anfangsstadien akzeptiert das Verfahren häufiger schlechtere Schritte, während in den Endstadien die schlechteren Schritte fast immer ablehnt werden."),
                     h3("- Das hat den Vorteil, dass Anfangs durch die schlechten Schritte sich das Verfahren nicht in einem lokalen Optimum verfängt und ein besseres lokales Optimum findet."),
                     )
                  )
                )
              )
            )
          )
        ),
        tabPanel("Graphische Visualisierung",
          icon = icon("far fa-image"),
          fluidRow(
            column(
              
              12,
              br(),
              verticalTabsetPanel(
                verticalTabPanel("Heuristik",
                                 style = "color:#000;",
                                 h2("Kernkonzept:"),
                                 h3("- Auffindung einer hinreichend guten Lösung, unter Abschätzung eines Zeitaufwandes"),
                                 h3("- Einsatz, wenn Optimierung wegen hohem Rechenaufwand scheitert"),
                                 h3("- Beispiel dafür Traveling Salesman-Problem")
                                 
                ),
                verticalTabPanel("Heuristik",
                                style = "color:#000;",
                                h2("Kernkonzept:"),
                                h3("- Auffindung einer hinreichend guten Lösung, unter Abschätzung eines Zeitaufwandes"),
                                h3("- Einsatz, wenn Optimierung wegen hohem Rechenaufwand scheitert"),
                                h3("- Beispiel dafür Traveling Salesman-Problem")
                                
                )
                ),
              
              12, h1("Graphische Visualisierung Berggipfel finden"),
              br(),
              img(src = "Gif_Explain.gif")
            )
          ),
          fluidRow(
            column(
              12, h1("Graphische Visualisierung Traveling Salesman Problem"),
              br(),
              img(src = "trav_sale.gif")
            )
          )
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
