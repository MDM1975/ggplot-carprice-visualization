library(ggplot2)

car_data <- read.csv("data/car_data.csv")

plot <- ggplot(car_data, aes(x = as.factor(Mfg_Year), y = Price)) +
    geom_boxplot(aes(fill = as.factor(Mfg_Year)), alpha = 0.5) +
    labs(
        title = "Box Plot of Car Prices by Manufacturing Year",
        x = "Manufacturing Year",
        y = "Price"
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
    scale_fill_discrete(
        name = "Manufacturing Year",
        labels = c("2002", "2003", "2004", "2001", "2000", "1999", "1998")
    ) +
    scale_x_discrete(
        name = "Manufacturing Year",
        labels = c("2002", "2003", "2004", "2001", "2000", "1999", "1998")
    )

ggsave(
    filename = paste0(
        getwd(),
        "/figures/boxplot_prices_by_year.png"
    ),
    plot = plot,
    width = 10,
    height = 6
)
