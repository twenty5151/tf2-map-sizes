library(ggplot2)
library(ggrepel)

data <- read.csv("tf2 map sizes.csv")

names(data) <-c("gamemode", "map", "size", "labels")

ggplot(data, aes(x=gamemode, y=size, color=gamemode)) + geom_violin() + geom_point() + scale_x_discrete(limits=c("Payload", "CP", "A/D", "CTF", "KOTH")) + geom_text_repel(aes(label=labels))


ggplot(data, aes(x=size, color=gamemode, fill=gamemode, alpha=0.5)) + geom_density() + facet_grid(gamemode ~ .)

