# Mon premier programme avec Claude

# Chargement des données

don<-read.table(file="DEV-AFRIC-2018/data/afrika_don.csv",
           header=TRUE,
           sep=";",
           quote='"',
           dec=",")

# Résumé de tout le tableau
summary(don)

# Résumé d'une simple variable
summary(don$PIB)
sd(don$PIB,na.rm = T)

# Sélection de colonne
don2<- don[,c(1,2,4,5,6)]

# Résumé du tabeau simplifié
summary(don2)

# Diagramme de corrélation 
plot(don$PIB,don$ESPVIE)

# Coefficient de corrélation
cor(don$PIB,don$ESPVIE,use="pairwise.complete.obs")

cor.test(don$PIB,don$ESPVIE,use="pairwise.complete.obs")

# Regression linéaire
boite<-lm(don$ESPVIE~don$PIB)
summary(boite)

anova(boite)
plot(boite,1)
plot(boite,2)
plot(boite,3)
plot(boite,4)
plot(boite,5)

# Tracé de la droite de régression
plot(don$PIB,don$ESPVIE)
abline(boite,col="red")
