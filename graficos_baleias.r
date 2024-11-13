# fonte dos dados = https://petestatistica.github.io/

################## DESAFIO BALEIAS #############################

# importa a base de dados

baleias <- read.table ("baleias.txt", header = TRUE, sep = ",")

# mostra os tipos de dados

str(baleias)

# converte a coluna "especie" em fator

baleias$especie <- as.factor(baleias$especie)

summary(baleias)

baleias <- na.omit(baleias)

library(ggplot2)

ggplot(baleias, aes(x=especie,fill=especie))+
  geom_bar()+
  labs(title = "Número de Baleias por Espécie",
         x = element_blank(),
         y = element_blank(),
         fill = element_blank())+
  scale_fill_manual(values = c("lightgreen","orange","purple","darkcyan"))+
  theme_minimal()

ggplot(baleias, mapping = aes (x = volume_cranio, y = profundidade_maxima, color = especie))+
  geom_point(position = "jitter", size = 2.1)+
  labs(title = "Volume do Crânio x Profundidade Máxima")
         x = "Volume do Crânio",
         y = "Profundidade Máxima",
         colour = "")+
  scale_colour_manual(values = c ("darkblue", "darkred", "orange", "darkcyan"))+
  theme_minimal()