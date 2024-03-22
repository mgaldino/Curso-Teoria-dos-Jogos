library(magick)
library(pdftools)


crop_game_tree <- function(image_file_pdf, path_import, path_export, nome_salvar) {
  library(magick)
  library(pdftools)
  
  imagem <- paste(path_import, image_file_pdf, sep = "/")
  pdf <- image_read_pdf(imagem)
  imagem <- image_convert(pdf, format = 'png')
  imagem_cortada <- image_trim(imagem)
  
  imagem_chopped <- image_chop(imagem_cortada, ".1x400+1+2000")
  imagem_cortada <- image_trim(imagem_chopped)
  imagem_final <- image_border(imagem_cortada, "white", "50x50")
  arquivo_saida = paste(path_export, paste0(nome_salvar, ".png"), sep="/")
  
  cat(image_write(imagem_final, arquivo_saida))
}

crop_game_tree(image_file_pdf = "jogo-confianca.pdf", path_import="C:/Users/3134777/Documents/DCP/Livros/Auxiliares tex",
               "C:/Users/3134777/Documents/DCP/Livros/Teoria-dos-Jogos/imagens", "jogo-confianca")

crop_game_tree(image_file_pdf = "jogo-extensivo2.pdf", path_import="C:/Users/3134777/Documents/DCP/Livros/Auxiliares tex",
               "C:/Users/3134777/Documents/DCP/Livros/Teoria-dos-Jogos/imagens", "jogo-extensivo2")


# pdf <- image_read_pdf('C:\\Users\\3134777\\Documents\\DCP\\Livros\\Auxiliares tex\\jogo-bofsex-nature2.pdf')
# pdf <- image_read_pdf('C:\\Users\\3134777\\Documents\\DCP\\Livros\\Auxiliares tex\\jogo-bofsex-nature.pdf')
# pdf <- image_read_pdf('C:\\Users\\3134777\\Documents\\DCP\\Livros\\Auxiliares tex\\jogo-extensivo.pdf')
pdf <- image_read_pdf('C:\\Users\\3134777\\Documents\\DCP\\Livros\\Auxiliares tex\\jogo-confianca.pdf')
imagem <- image_convert(pdf, format = 'png')
imagem_cortada <- image_trim(imagem)

imagem_chopped <- image_chop(imagem_cortada, ".1x400+1+2000")
imagem_cortada <- image_trim(imagem_chopped)
imagem_final <- image_border(imagem_cortada, "white", "50x50")
# image_write(imagem_final, "C:\\Users\\3134777\\Documents\\DCP\\Livros\\Teoria-dos-Jogos\\imagens\\jogo-bofsex-nature1.png")
image_write(imagem_final, "C:\\Users\\3134777\\Documents\\DCP\\Livros\\Teoria-dos-Jogos\\imagens\\jogo-confianca.png")
