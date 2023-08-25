if(!require(devtools)) install.packages("devtools")
devtools::install_github("kassambara/ggpubr")
#install.packages("ggpubr")
1
library("ggpubr")
library(ggplot2)

dados<- read.csv ("https://github.com/Prof-pardal/MS_MATHEUS/raw/main/CORRELACOES_R.csv")
head (dados)
#View(dados)

dados$Tratamentos <- as.factor(dados$Tratamentos)
#dados$CP <- as.factor(dados$CP)

str(dados)


#INDEPENDENTE DE TRATAMENTO, RR E INT JUNTO
ggscatter(dados, x = "CP", y = "CO", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Caliotrhips phaseoli", ylab = "Condylostylus")


ggscatter(dados, x = "FO", y = "CO", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Caliotrhips phaseoli", ylab = "Condylostylus")


ggscatter(dados, x = "FS", y = "CO", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Caliotrhips phaseoli", ylab = "Condylostylus")

ggscatter(dados, x = "HG", y = "CO", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Caliotrhips phaseoli", ylab = "Condylostylus")


ggscatter(dados, x = "TR", y = "CO", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Caliotrhips phaseoli", ylab = "Condylostylus")


ggscatter(dados, x = "TR1", y = "CO", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Caliotrhips phaseoli", ylab = "Condylostylus")

#SEPARADO POR TRATAMENTO




ggscatter(dados, x = "x1", y = "y", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Caliotrhips phaseoli", ylab = "Condylostylus")



# Shapiro-Wilk normality test
shapiro.test(dados$CP) # => p = 0.2978
shapiro.test(dados$FO) # => p = 0.01076
shapiro.test(dados$FS) # => p = 0.1274
shapiro.test(dados$HG) # => p = 2.09e-12
shapiro.test(dados$TR) # => p = 0.4419

shapiro.test(dados$CO) # => p = 0.2423


# mpg
ggqqplot(dados$CP, ylab = "CO")
# wt
ggqqplot(my_data$wt, ylab = "WT")


#Pearson correlation test
res <- cor.test(my_data$wt, my_data$mpg, 
                method = "pearson")
res