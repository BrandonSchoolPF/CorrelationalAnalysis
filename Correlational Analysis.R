library(ggplot2)
data <- mtcars

Cor_model <- lm(hp ~ mpg, data)
summary(Cor_model)

reg_graph <- ggplot(data, aes(y = hp, x = mpg, size = mpg)) + 
             geom_point() + 
             geom_smooth(method = "lm", se = FALSE) +
             ggtitle("HP vs MPG Correlation") 
reg_graph
