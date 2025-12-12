# 🛒 Patrones de Comportamiento de Clientes  
**Análisis exploratorio, segmentación de clientes y consultas SQL para detectar hábitos de compra**

---

## 📌 Descripción del proyecto
Este proyecto analiza un dataset de comportamiento de compra para identificar **patrones de consumo**, **segmentos de clientes** y **tendencias comerciales clave** utilizando Python, SQL y visualizaciones.  

El análisis incluye limpieza de datos, creación de grupos etarios, estudio de montos de compra, reseñas, descuentos, tipos de envío y categorías de productos.

🔧 Además, el proyecto incluirá un **dashboard interactivo en Power BI** (actualmente en desarrollo) para visualizar métricas clave y facilitar decisiones basadas en datos.

---

## 🎯 Objetivo
El objetivo principal es generar **insights accionables**, tales como:

- ¿Qué grupos de edad generan más ingresos?  
- ¿Qué categorías y productos son más populares?  
- ¿Qué impacto tienen los descuentos en las compras?  
- ¿Qué tipo de envío se elige más y por qué?  
- ¿Cómo influyen las calificaciones en el comportamiento del cliente?

---

## 📂 Estructura del Proyecto

```text
patrones-comportamiento-clientes/
│   README.md
│
├───data
│   │   customer_shopping_behavior_filtered.csv
│   │   SQLQuery-comportamiento-clientes.sql
│   │
│   └───raw data
│           customer_shopping_behavior.csv
│
└───src
    │   ds-analisis.ipynb
    │   filtrado.py
    │
    └───dashboard
            Claro - Ruby Zafiro.json
            dashboard ventas.pbix
```

---

## <img width="40px" src="https://github.com/tandpfun/skill-icons/blob/main/icons/Python-Dark.svg" title="Python"/> Procesamiento y Limpieza de Datos

El filtrado incluye:

- Conversión de tipos de datos  
- Eliminación de registros inconsistentes  
- Imputación de valores faltantes (por ejemplo, medianas por categoría)  
- Creación de **grupos etarios** usando `qcut`  
- Normalización de columnas para análisis posterior

---

## <img width="40px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/jupyter/jupyter-original.svg" title="Jupyter"/> Análisis Exploratorio (EDA)

El notebook `ds-analisis.ipynb` contiene:

- 
-
-
-
-
- 

---

## <img width="40px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/microsoftsqlserver/microsoftsqlserver-plain.svg" title="SQL Server"/> Consultas SQL Incluidas

Las consultas del archivo `.sql` permiten:

- Obtener los productos más vendidos por categoría  
- Calcular ingresos totales y promedios por grupo de edad  
- Analizar el comportamiento de clientes con descuento vs. sin descuento  
- Identificar categorías con mayor ingreso generado  
- Obtener resumen de envíos (Express vs Standard)  
- Ranking de productos según calificación promedio

---

## <img width="40px" src="https://github.com/microsoft/PowerBI-Icons/blob/main/SVG/Power-BI.svg" title="Power BI"/> Dashboard en Power BI  

Este proyecto cuenta con un **dashboard interactivo en Power BI**, que incluye:

- Ingresos por grupo de edad  
- Productos más comprados  
- Monto total por categoría  
- Comparación entre tipos de envío  
- Efecto de descuentos en el comportamiento de compra  
- Calificación promedio por producto y categoría  

Próximamente será agregado a este repositorio.

---

## 🚀 Tecnologías Utilizadas

- <img width="30px" src="https://github.com/tandpfun/skill-icons/blob/main/icons/Python-Dark.svg" title="Python"/> **Python** (pandas, numpy, matplotlib, seaborn) 
- <img width="30px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/microsoftsqlserver/microsoftsqlserver-plain.svg" title="SQL Server"/> **SQL Server**
- <img width="30px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/jupyter/jupyter-original.svg" title="Jupyter"/> **Jupyter Notebook**
- <img width="30px" src="https://github.com/microsoft/PowerBI-Icons/blob/main/SVG/Power-BI.svg" title="Power BI"/> **Power BI** (en construcción)
- <img width="30px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-plain.svg" title="Git"/> **Git / GitHub**

