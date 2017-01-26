library(mosaic)
library(ggplot2)
library(dplyr)
data(Galton, package = "mosaicData")

Tmp <-
  Galton %>%
  group_by(sex)
nrow(Galton)
nrow(Tmp)
names(Galton)
names(Tmp)
head(Galton)
head(Tmp)

Galton %>%
  summarise(mheight = mean(height/sqrt(nkids)),
            m_mother = median(mother),
            s_father = sd(father),
            ncases = n())

Galton %>%
  group_by(sex, nkids) %>%
  summarise(mheight = mean(height), ncases = n())

