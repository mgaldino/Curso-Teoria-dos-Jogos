library(rgamer)

# Caso 1, ponto mediano da câmara é mais próximo do presidente que do Senado
# Senado tem palavra final (não volta para câmara)
game_cs<- extensive_form(
  players = list("Presidente", 
                 "Câmara",
                 rep("Senado", 3),
                 rep(NA, 9)),
  actions = list(c("Envia projeto de lei"),
                 c("Aprova projeto original", "Emenda", "Rejeita"),
                 c("Aprova projeto original", "Emenda projeto original", "Rejeita projeto original",
                   "Aprova projeto Câmara", "Emenda projeto Câmara", "Rejeita projeto Câmara",
                 "Aprova projeto rejeitado", "Emenda projeto rejeitado", "Rejeita projeto rejeitado")),
  payoffs = list(Presidente = c(5, 4, 0, 4, 3, 0, 0, 0, 0),
                 Câmara = c(4, 5, 3, 2, 1, 0, 0, 0, 0),
                 Senado = c(3, 3, 3, 3, 3, 3, 0 , 0, 0)),
  direction = "right")

game6

game1 <- extensive_form(
  players = list("Presidente", 
                 "Camara",
                 rep("Senado", 3),
                 rep(NA, 7)),
  actions = list(c("Envia projeto de lei"), # primeiro
                 c("Aprova projeto original", "Emenda", "Rejeita"), # segundo
                 c("Aprova projeto original", "Emenda original", "Rejeita"),
                 c("stat", "game", "teste"),
                 c("nada faz")),
  payoffs = list(Presidente = c(2, 0, 1, 1, 1, 1, 0),
                 Camara = c(1, 0, 1, 1, 1 ,1, 0),
                 Senado =  c(1, 0, 1, 1 ,1 ,1, 0)),
  direction = "right")

