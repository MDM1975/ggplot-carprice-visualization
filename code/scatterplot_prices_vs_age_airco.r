library(ggplot2)

car_data <- read.csv("data/car_data.csv")

plot <- ggplot(car_data, aes(x = Age_08_04, y = Price)) +
    geom_point(aes(color = as.factor(Airco)), alpha = 0.6, size = 2) +
    labs(
        title = "Scatter Plot of Car Prices vs. Age by Airco",
        x = "Age",
        y = "Price",
        color = "Airco"
    ) +
    theme_bw() +
    theme(
        plot.title = element_text(hjust = 0.5, face = "bold", size = 18),
        axis.title.x = element_text(face = "bold", size = 14),
        axis.title.y = element_text(face = "bold", size = 14),
        legend.position = "top",
        legend.title = element_blank(),
        legend.key.size = unit(1, "cm"),
        legend.text.align = 2.25,
        legend.text = element_text(size = 12),
        strip.background = element_blank(),
        strip.text = element_text(size = 14, face = "bold")
    ) +
    scale_x_continuous(breaks = seq(0, 80, 5)) +
    scale_y_continuous(breaks = seq(0, 50000, 5000))

ggsave(
    filename = "figures/scatterplot_prices_vs_age_airco.png",
    plot = plot,
    width = 10,
    height = 6
)
