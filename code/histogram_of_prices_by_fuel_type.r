library(ggplot2)

car_data <- read.csv("data/car_data.csv")

plot <- ggplot(car_data, aes(x = Price, fill = Fuel_Type, color = Fuel_Type)) +
    geom_histogram(position = "identity", alpha = 0.5, bins = 30) +
    labs(
        title = "Histogram of Car Prices by Fuel Type",
        x = "Price",
        y = "Frequency",
        fill = "Fuel Type",
        color = "Fuel Type"
    ) +
    theme_bw() +
    theme(
        plot.title = element_text(hjust = 0.5, face = "bold", size = 18),
        axis.title.x = element_text(face = "bold", size = 14),
        axis.title.y = element_text(face = "bold", size = 14),
        legend.position = "top",
        legend.title = element_blank(),
        strip.background = element_blank(),
        strip.text = element_text(size = 14, face = "bold")
    ) +
    scale_fill_manual(values = c(
        "Petrol" = "green",
        "Diesel" = "red",
        "CNG" = "blue"
    ))

ggsave(
    filename = "figures/histogram_of_prices_by_fuel_type.png",
    plot = plot,
    width = 10,
    height = 6
)
