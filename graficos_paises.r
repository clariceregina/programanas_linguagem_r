# fonte dos dados = https://petestatistica.github.io/

################## PAISES #############################

paises <- read.csv("paises_info.csv", header = TRUE, sep = "-")

str (paises)

# mudar nome das variáveis

colnames(paises)

vetor_nome <- c ("pais", "ano", "exp_vida", "pop", "pib")

colnames(paises) <- vetor_nome

colnames(paises)

paises$pais == "Brazil"

paises[paises$pais == "Brazil", "pais"] <- "Brasil"

paises[paises$pais == "Brasil",]

# Gráfico de linhas

ggplot (paises, mapping = aes (x = ano, y = pib, color = pais))+
  geom_line()

# Gráfico dispersão

ggplot(pinguins, mapping = aes (x = profundidade_bico_mm, y = tamanho_bico_mm))+
  geom_point()

ggplot(pinguins, mapping = aes (x = profundidade_bico_mm, y = tamanho_bico_mm, color = especie))+
  geom_point()

# Jitter dispersa os pontos

ggplot (pinguins, mapping = aes (x= profundidade_bico_mm, y = tamanho_bico_mm, color = especie))+
  geom_point (position = "jitter")

ggplot (pinguins, mapping = aes (x= profundidade_bico_mm, y = tamanho_bico_mm, color = especie))+
  geom_point (position = "jitter", size = 2)

ggplot (pinguins, mapping = aes (x= profundidade_bico_mm, y = tamanho_bico_mm, color = especie))+
  geom_point (position = "jitter", size = 2)+
  labs (title = "Gráfico de Dispersão")

ggplot (pinguins, mapping = aes (x= profundidade_bico_mm, y = tamanho_bico_mm, color = especie))+
  geom_point (position = "jitter", size = 2)+
  labs (title = "Gráfico de Dispersão",
        subtitle = "Tamanho do bico x profundidade")

ggplot (pinguins, mapping = aes (x= profundidade_bico_mm, y = tamanho_bico_mm, color = especie))+
  geom_point (position = "jitter", size = 2)+
  labs (title = "Gráfico de Dispersão",
        subtitle = "Tamanho do bico x profundidade",
        x = "Profundidade do Bico",
        y = "Tamanho do Bico",
        colour = "Especie: ")+
  scale_colour_manual (value = c ("darkblue", "darkcyan", "orange"))+
  theme_test()

# Mostra todos os argumentos de uma função para alterar tema

args(theme)

# Outro gráfico

ggplot(pinguins, mapping = aes(x = ilha, fill = especie)) +
  geom_bar() +
  labs(title = "Espécies de pinguim em cada ilha",
       subtitle = "Tamanho do bico x profundidade",
       x = "",
       y = "",
       fill = "") +
  scale_fill_manual(values = c("purple", "darkblue", "darkred")) +
  facet_wrap(~sexo) +
  theme_linedraw()