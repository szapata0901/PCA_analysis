library(ade4)
library(FactoClass)

# Cargar el dataset "cafe"
data(cafe)
View(cafe)
names(cafe) # Muestra los nombres de las columnas del dataset

# Seleccionar las primeras 10 filas y las columnas 10 a 16 del dataset "cafe"
cafe_calidad = cafe[1:10, 10:16] 

# Realizar un Análisis de Componentes Principales (ACP)
acp_cafe = dudi.pca(cafe_calidad)
inertia.dudi(acp_cafe) # Muestra la inercia de los componentes

# Gráfico de círculo de correlaciones
s.corcircle(acp_cafe$co[, 1:2]) # Muestra el gráfico de círculo de correlaciones para los componentes 1 y 2

# Gráfico de etiquetas de los cafés
s.label(acp_cafe$li[, 1:2]) # Muestra el gráfico de etiquetas de los cafés para los componentes 1 y 2

# Mostrar los nombres de las primeras 10 filas (cafés)
row.names(cafe)[1:10]

# Crear un vector de tipos de café
tipo = c("E", "M", "C", "M", "C", "E", "M", "C", "M", "C")
tipo = as.factor(tipo)

# Gráfico de clasificación de los cafés
s.class(acp_cafe$li[, 1:2], fac = tipo)

