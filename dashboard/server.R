# server.R

# =================================
# Server
server <- function(input, output, session) {
  output$randomDataTable <- DT::renderDataTable({
    algorithmData <- read.csv(file = "DataAlgorithm.csv", header = TRUE)
    algorithmDataClean <- subset(algorithmData, select = c("height"))

    df <- data.frame(algorithmDataClean)
    return(df)
  })
}
