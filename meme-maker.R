library(ggplot2)
library(magick)
library(shadowtext)
library(extrafont)


img <- image_read("./pictures/vijay-happy-sad.jpeg")


myplot <- image_ggplot(img)



myplot + geom_shadowtext(
  aes(
    # label = "I RECORDED \nSOME BIRD CALLS\nFOR YOU!",
    # label = "WHEN YOU MOVE\nTO GAINESVILLE...",
    # label = "I'm a postdoc now!",
    label = "When you plan on \npainting all day...",
    x = 1675,
    y = 2080
  ),
  size = 9,
  family = "Impact"
) +
  geom_shadowtext(
    aes(
      # label = "...THE DAY BEFORE \nA HURRICANE.",
      # label = "THEY WERE CROWS.",
      # label = "But I still study birds.",
      label = "...but Bean chewed on\nyour favorite brush.",
      x = 1700,
      y = 1300
    ),
    size = 9,
    family = "Impact"
  )
