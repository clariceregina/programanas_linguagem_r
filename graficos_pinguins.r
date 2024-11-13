# fonte dos dados = https://petestatistica.github.io/

################## PINGUINS #############################

pinguins <- read.table ("pinguins.csv", header = TRUE, sep = ",")

pinguins

str(pinguins)

summary(pinguins)

pinguins <- na.omit(pinguins)

summary(pinguins)

gentoo <- pinguins[pinguins$peso_g >= 5000,]

pinguins[pinguins$peso_g >= 5000,]

# Transformações de dados

str (pinguins)

pinguins$peso_g <- as.numeric(pinguins$peso_g)

# Transformando os Dados Numéricos em Fator

pinguins$especie <- as.factor(pinguins$especie)

pinguins$ilha <- as.factor(pinguins$ilha)

pinguins$sexo <- as.factor(pinguins$sexo)

levels (pinguins$especie)

levels (pinguins$ilha)

table(pinguins$especie)

table(pinguins$ilha)

table(pinguins$ilha, pinguins$especie)

#ggplot2

install.packages("ggplot2")

library(ggplot2)

ggplot

# Fala para o ggplot qual conjunto de dados usar para fazer gráficos

ggplot(data=pinguins)

# data = conjunto de dados

# mapping = mapeamento do gráfico

# geom_point = indica qual geometria será usada na construção do gráfico

# "+" = adiciona camada

# mapeia as variáveis que serão usadas no gráfico

# aes = estética, vem de aestetic

ggplot (data = pinguins, mapping = aes (x = profundidade_bico_mm, y = tamanho_bico_mm))

ggplot (data = pinguins, mapping = aes (x = profundidade_bico_mm, y = tamanho_bico_mm))+
  geom_point()

# Explorando geometrias

# Gráfico de barras = ver contagem de algo

ggplot (pinguins, aes (x = ilha))+
  geom_bar()

ggplot(pinguins, aes (x = ilha, fill = especie))+
  geom_bar()

# Boxplot

ggplot (pinguins, aes (x = especie, y = nadadeira_mm, fill = ilha))+
  geom_boxplot()

ggplot (pinguins, aes (x = sexo, y = peso_g))+
  geom_boxplot(fill = "darkcyan")

ggplot (pinguins, aes (x = sexo, y = peso_g))+
  geom_boxplot(colour = "pink")

# histograma

adelie <- pinguins(pinguins$especie == "Adelie",)

ggplot (adelie, mapping = aes(x = peso_g))+
  geom_histogram(colour = "yellow", fill = "darkcyan")

ggplot (adelie, mapping = aes (x = peso_g))+
  geom_histogram(colour = "darkblue", fill = "orange", bins = 10)
