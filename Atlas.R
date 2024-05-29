library(ade4)
library(FactoClass)
library(sp)

# Cargar el dataset 'atlas'
data(atlas)
x1 = atlas$meteo  # Datos meteorológicos

# Graficar las primeras 4 variables de los datos meteorológicos
plot(x1[, 1:4])

# Calcular la matriz de correlación de las variables meteorológicas
cor(x1)

# Realizar el análisis de componentes principales (ACP) de los datos meteorológicos
acp_meteo = dudi.pca(x1)  # Crea nuevas variables (componentes principales)
acp_meteo$eig  # Mostrar los autovalores del ACP
inertia_meteo = inertia.dudi(acp_meteo)
inertia_meteo$tot.inertia  # Muestra la inercia total del ACP

# Crear gráfico del círculo de correlaciones para visualizar las correlaciones entre las variables meteorológicas
s.corcircle(acp_meteo$co)
s.label(acp_meteo$li)  # Graficar las etiquetas de los individuos

