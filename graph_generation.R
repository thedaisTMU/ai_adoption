library(BFTheme)
library(ggplot2)
library(data.table)

#########################################################
#Load in graph spread sheets
graph.data <- fread("Graphs/Graph_spreadsheet.csv")




#################################
#Figure 1 onwards


figure_1_data <- fread("Graphs/Graphs_Data/Figure_1.csv")
figure.1 <- plot.column.bf(figure_1_data, "ai_per", "size",
                         plot.fig.num = "Figure 2",
                         plot.title= graph.data[graph.data$Figure_number=="Figure 1",Figure_title],
                         y.axis= graph.data[graph.data$Figure_number=="Figure 1",Y_Axis],
                         caption = graph.data[graph.data$Figure_number=="Figure 1",Caption],
                         label.unit = graph.data[graph.data$Figure_number=="Figure 1",Y_Axis_Ticks],
                         label.adjust = 0.025,
                         export = TRUE,
                         export.name = "F1")


figure_2_data <- fread("Graphs/Graphs_Data/Figure_2.csv")
figure.2 <- plot.column.bf(figure_2_data,"AI_Adoption_Rate", "Country", order.bar="descending", group.by = "Canada_Flag", label=FALSE,
                           plot.fig.num = "Figure 2",
                           plot.title= graph.data[graph.data$Figure_number=="Figure 2",Figure_title],
                           y.axis= graph.data[graph.data$Figure_number=="Figure 2",Y_Axis],
                           caption = graph.data[graph.data$Figure_number=="Figure 2",Caption],
                           label.unit = graph.data[graph.data$Figure_number=="Figure 2",Y_Axis_Ticks],
                           label.adjust = 0.025,
                           export = TRUE,
                           export.name = "F2") 


figure_3_data <- fread("Graphs/Graphs_Data/Figure_3.csv")
figure.3 <- plot.column.bf(figure_3_data,"Adoption_Rate", "Country", order.bar="descending", group.by = "Canada_Flag", label=FALSE,
                           plot.fig.num = "Figure 3",
                           plot.title= graph.data[graph.data$Figure_number=="Figure 3",Figure_title],
                           y.axis= graph.data[graph.data$Figure_number=="Figure 3",Y_Axis],
                           caption = graph.data[graph.data$Figure_number=="Figure 3",Caption],
                           label.unit = graph.data[graph.data$Figure_number=="Figure 3",Y_Axis_Ticks],
                           label.adjust = 0.025,
                           export = TRUE,
                           export.name = "F3") 


figure_4_data <- fread("Graphs/Graphs_Data/Figure_4.csv")
figure.4 <- plot.column.bf(figure_4_data,"ai_per", "size",  label=FALSE,
                           plot.fig.num = "Figure 4",
                           plot.title= graph.data[graph.data$Figure_number=="Figure 4",Figure_title],
                           y.axis= graph.data[graph.data$Figure_number=="Figure 4",Y_Axis],
                           caption = graph.data[graph.data$Figure_number=="Figure 4",Caption],
                           label.unit = graph.data[graph.data$Figure_number=="Figure 4",Y_Axis_Ticks],
                           label.adjust = 0.025,
                           export = TRUE,
                           export.name = "F4") 


figure_5_data <- fread("Graphs/Graphs_Data/Figure_5.csv")
figure.5 <- plot.column.bf(figure_5_data,"ai_per", "description", order.bar="descending", label=FALSE, group.by = "overall",
                           plot.fig.num = "Figure 5",
                           plot.title= graph.data[graph.data$Figure_number=="Figure 5",Figure_title],
                           y.axis= graph.data[graph.data$Figure_number=="Figure 5",Y_Axis],
                           caption = graph.data[graph.data$Figure_number=="Figure 5",Caption],
                           label.unit = graph.data[graph.data$Figure_number=="Figure 5",Y_Axis_Ticks],
                           label.adjust = 0.025,
                           export = TRUE,
                           export.name = "F5") 



figure_6_data <- fread("Graphs/Graphs_Data/Figure_6.csv")

figure_6_data <- dplyr::filter(figure_6_data, NAICS!="All industries") 

figure.6 <- ggplot2::ggplot(figure_6_data, aes(x = `GDP Contribution_000s`, y = Employment_000s, label=NAICS, size = `AI Adoption Rate`, colour="eb0072")) +
  geom_point(alpha = 0.7) + 
  scale_size(range = c(5, 20)) +
  labs(title = "AI Adoption and Economic Contribution of Industries", x = "GDP Contribution (in $1,000s)", y = "Employment (in 1000s)")+
  geom_text(
    nudge_x=0.45, nudge_y=0.1,
    check_overlap=T,
    size=3,
    colour="black"
  )+
  brookfield.base.theme() + #Base theme
  labs(title = "Figure 6",subtitle = graph.data[Figure_number=="Figure 6",Figure_title], caption = graph.data[Figure_number=="Figure 6",Caption],
       fill = "Legend")+ 
  guides(colour="none")


figure_7_data <- fread("Graphs/Graphs_Data/Figure_7.csv")
figure.7 <- plot.column.bf(figure_7_data,"percent_adopters", "region", label=FALSE, order.bar="descending", 
                           plot.fig.num = "Figure 7",
                           plot.title= graph.data[graph.data$Figure_number=="Figure 7",Figure_title],
                           y.axis= graph.data[graph.data$Figure_number=="Figure 7",Y_Axis],
                           caption = graph.data[graph.data$Figure_number=="Figure 7",Caption],
                           label.unit = graph.data[graph.data$Figure_number=="Figure 7",Y_Axis_Ticks],
                           label.adjust = 0.025,
                           export = TRUE,
                           export.name = "F7") 


figure_8_data <- fread("Graphs/Graphs_Data/Figure_8.csv")
figure.8 <- plot.column.bf(figure_8_data,"Artificial_Intelligence", "Group",label=FALSE,
                           plot.fig.num = "Figure 8",
                           plot.title= graph.data[graph.data$Figure_number=="Figure 8",Figure_title],
                           y.axis= graph.data[graph.data$Figure_number=="Figure 8",Y_Axis],
                           caption = graph.data[graph.data$Figure_number=="Figure 8",Caption],
                           label.unit = graph.data[graph.data$Figure_number=="Figure 8",Y_Axis_Ticks],
                           label.adjust = 0.025,
                           export = TRUE,
                           export.name = "F8") 


figure_9_data <- fread("Graphs/Graphs_Data/Figure_9.csv")
figure.9 <- plot.column.bf(figure_9_data,"Percent", "Type_of_AI",label=FALSE, order.bar = "descending",
                           plot.fig.num = "Figure 9",
                           plot.title= graph.data[graph.data$Figure_number=="Figure 9",Figure_title],
                           y.axis= graph.data[graph.data$Figure_number=="Figure 9",Y_Axis],
                           caption = graph.data[graph.data$Figure_number=="Figure 9",Caption],
                           label.unit = graph.data[graph.data$Figure_number=="Figure 9",Y_Axis_Ticks],
                           label.adjust = 0.025,
                           export = TRUE,
                           export.name = "F9") 


figure_10_data <- fread("Graphs/Graphs_Data/Figure_10.csv")
figure.10 <- filter(figure_10_data, size=="small") |>
  plot.column.bf("Percent", "Type_of_AI",label=FALSE, order.bar = "descending",
                           plot.fig.num = "Figure 10",
                           plot.title= graph.data[graph.data$Figure_number=="Figure 10",Figure_title],
                           y.axis= graph.data[graph.data$Figure_number=="Figure 10",Y_Axis],
                           caption = graph.data[graph.data$Figure_number=="Figure 10",Caption],
                           label.unit = graph.data[graph.data$Figure_number=="Figure 10",Y_Axis_Ticks],
                           label.adjust = 0.025,
                           export = TRUE,
                           export.name = "F10") 

figure.11 <- filter(figure_10_data, size=="medium") |>
  plot.column.bf("Percent", "Type_of_AI",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 11",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 11",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 11",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 11",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 11",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F11") 

figure.12 <- filter(figure_10_data, size=="large") |>
  plot.column.bf("Percent", "Type_of_AI",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 12",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 12",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 12",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 12",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 12",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F12") 

figure_13_data <- fread("Graphs/Graphs_Data/Figure_13.csv")
figure.13 <- filter(figure_13_data, goods_industry2021=="TRUE") |>
  plot.column.bf("yes", "type_of_ai",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 13",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 13",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 13",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 13",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 13",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F13") 

figure.14 <- filter(figure_13_data, goods_industry2021=="FALSE") |>
  plot.column.bf("yes", "type_of_ai",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 14",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 14",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 14",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 14",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 14",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F14") 


figure_15_data <- fread("Graphs/Graphs_Data/Figure_15.csv")
figure.15 <- plot.column.bf(figure_15_data, "Percent", "Reported_Use_of_AI",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 15",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 15",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 15",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 15",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 15",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F15") 

figure_16_data <- fread("Graphs/Graphs_Data/Figure_16.csv")
figure.16 <- filter(figure_16_data, size=="Small") |>
  plot.column.bf("Percent", "Reported_Use_of_AI",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 16",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 16",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 16",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 16",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 16",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F16") 

figure.17 <- filter(figure_16_data, size=="Medium") |>
  plot.column.bf("Percent", "Reported_Use_of_AI",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 17",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 17",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 17",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 17",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 17",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F17") 

figure.18 <- filter(figure_16_data, size=="Large") |>
  plot.column.bf("Percent", "Reported_Use_of_AI",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 18",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 18",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 18",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 18",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 18",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F18") 

figure_19_data <- fread("Graphs/Graphs_Data/Figure_19.csv")
figure.19 <- filter(figure_19_data, goods_industry2021=="TRUE") |>
  plot.column.bf("yes", "use_case",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 19",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 19",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 19",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 19",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 19",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F19") 


figure.20 <- filter(figure_19_data, goods_industry2021=="FALSE") |>
  plot.column.bf("yes", "use_case",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 20",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 20",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 20",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 20",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 20",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F20") 


figure_21_data <- fread("Graphs/Graphs_Data/Figure_21.csv")
figure.21 <- plot.column.bf(figure_21_data,"Percent", "variable",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 21",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 21",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 21",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 21",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 21",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F21") 


figure_22_data <- fread("Graphs/Graphs_Data/Figure_22.csv")
figure.22 <- filter(figure_22_data, size=="Small") |>
  plot.column.bf("Percent", "variable",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 22",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 22",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 22",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 22",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 22",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F22") 


figure.23 <- filter(figure_22_data, size=="Medium") |>
  plot.column.bf("Percent", "variable",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 23",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 23",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 23",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 23",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 23",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F23") 


figure.24 <- filter(figure_22_data, size=="Large") |>
  plot.column.bf("Percent", "variable",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 24",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 24",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 24",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 24",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 24",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F24") 


figure_25_data <- fread("Graphs/Graphs_Data/Figure_25.csv")
figure.25 <- filter(figure_25_data, goods_industry2021=="TRUE") |>
  plot.column.bf("yes", "reason",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 25",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 25",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 25",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 25",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 25",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F25") 

figure.26 <- filter(figure_25_data, goods_industry2021=="FALSE") |>
  plot.column.bf("yes", "reason",label=FALSE, order.bar = "descending",
                 plot.fig.num = "Figure 26",
                 plot.title= graph.data[graph.data$Figure_number=="Figure 26",Figure_title],
                 y.axis= graph.data[graph.data$Figure_number=="Figure 26",Y_Axis],
                 caption = graph.data[graph.data$Figure_number=="Figure 26",Caption],
                 label.unit = graph.data[graph.data$Figure_number=="Figure 26",Y_Axis_Ticks],
                 label.adjust = 0.025,
                 export = TRUE,
                 export.name = "F26") 
