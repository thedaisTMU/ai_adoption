library(BFTheme)
library(ggplot2)
library(data.table)


#########################################################
#Load in graph spread sheets
graph.data <- fread("C:/Users/alockhart/Desktop/AI Adoption/Quebec Report/Graphs_Data/Graphs_spreadsheet.csv")




#################################
#Figure 27 onwards


figure_27_data <- fread("C:/Users/alockhart/Desktop/AI Adoption/Quebec Report/Graphs_Data/Figure_27.csv")
figure.27 <- plot.column.bf(figure_27_data, "percent_adopters", "region",
                           plot.fig.num = "Figure 27",
                           plot.title= graph.data[graph.data$Figure_number=="Figure 27",Figure_title],
                           y.axis= graph.data[graph.data$Figure_number=="Figure 27",Y_Axis],
                           caption = graph.data[graph.data$Figure_number=="Figure 27",Caption],
                           label.unit = graph.data[graph.data$Figure_number=="Figure 27",Y_Axis_Ticks],
                           label.adjust = 0.025,
                           export = TRUE,
                           export.name = "F27")



figure_28_data <- fread("C:/Users/alockhart/Desktop/AI Adoption/Quebec Report/Graphs_Data/Figure_28.csv")
figure.28 <- dplyr::filter(figure_28_data, region=="Quebec") |>
  plot.column.bf("yes", "type_of_ai",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 28",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 28",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 28",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 28",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 28",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F28") 

figure.29 <- dplyr::filter(figure_28_data, region=="Ontario") |>
  plot.column.bf("yes", "type_of_ai",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 29",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 29",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 29",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 29",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 29",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F29") 

figure.30 <- dplyr::filter(figure_28_data, region=="Rest of Canada") |>
  plot.column.bf("yes", "type_of_ai",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 30",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 30",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 30",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 30",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 30",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F30") 

figure_31_data <- fread("C:/Users/alockhart/Desktop/AI Adoption/Quebec Report/Graphs_Data/Figure_31.csv")
figure.31 <- dplyr::filter(figure_31_data, region=="Quebec") |>
  plot.column.bf("yes", "use_case",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 31",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 31",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 31",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 31",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 31",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F31") 

figure.32 <- dplyr::filter(figure_31_data, region=="Ontario") |>
  plot.column.bf("yes", "use_case",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 32",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 32",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 32",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 32",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 32",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F32") 

figure.33 <- dplyr::filter(figure_31_data, region=="Rest of Canada") |>
  plot.column.bf("yes", "use_case",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 33",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 33",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 33",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 33",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 33",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F33") 


figure_34_data <- fread("C:/Users/alockhart/Desktop/AI Adoption/Quebec Report/Graphs_Data/Figure_34.csv")
figure.34 <- dplyr::filter(figure_34_data, region=="Quebec") |>
  plot.column.bf("yes", "reason",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 34",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 34",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 34",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 34",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 34",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F34") 


figure.35 <- dplyr::filter(figure_34_data, region=="Ontario") |>
  plot.column.bf("yes", "reason",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 35",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 35",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 35",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 35",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 35",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F35") 


figure.36 <- dplyr::filter(figure_34_data, region=="Rest of Canada") |>
  plot.column.bf("yes", "reason",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 36",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 36",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 36",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 36",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 36",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F36") 


