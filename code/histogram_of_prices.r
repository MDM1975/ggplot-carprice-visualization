library(ggplot2)

car_data <- read.csv("data/car_data.csv")

plot <- ggplot(car_data, aes(x = Price)) +
  geom_histogram(
    position = "identity",
    alpha = 0.5,
    bins = 30,
    fill = "blue",
    color = "black"
  ) +
  labs(
    title = "Histogram of Car Prices",
    x = "Price",
    y = "Frequency"
  ) +
  theme_bw() +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold", size = 18),
    axis.title.x = element_text(face = "bold", size = 14),
    axis.title.y = element_text(face = "bold", size = 14),
    strip.background = element_blank(),
    strip.text = element_text(size = 14, face = "bold")
  )

ggsave(
  filename = "figures/histogram_of_prices.png",
  plot = plot,
  width = 10,
  height = 6
)
