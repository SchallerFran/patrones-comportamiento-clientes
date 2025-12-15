# 🛒 Patrones de Comportamiento de Clientes

**Análisis exploratorio, segmentación de clientes y visualización interactiva en Power BI**

---

## 📌 Descripción del proyecto

Este proyecto analiza un dataset de **comportamiento de compra de clientes** con el objetivo de identificar **patrones de consumo**, **preferencias de compra** y **segmentos de clientes** relevantes para la toma de decisiones comerciales.

El análisis combina **Python, SQL y Power BI**, abarcando desde la limpieza y transformación de los datos hasta la construcción de un **dashboard interactivo** que permite explorar métricas clave de forma visual e intuitiva.

---

## 🎯 Objetivos del análisis

El proyecto busca responder preguntas estratégicas como:

* ¿Qué categorías y productos concentran mayor volumen de ventas?
* ¿Qué grupos etarios tienen mayor participación?
* ¿Cuál es el monto promedio de compra?
* ¿Qué métodos de pago son más utilizados?
* ¿Qué porcentaje de clientes está suscripto?
* ¿Existen diferencias de comportamiento según género, talla o tipo de envío?

---

## <img width="30px" src="https://github.com/microsoft/PowerBI-Icons/blob/main/SVG/Power-BI.svg" title="Power BI"/> Dashboard en Power BI

El dashboard presenta una **vista integral del negocio**, permitiendo analizar el comportamiento del cliente mediante filtros y visualizaciones dinámicas.

### Métricas principales

* Monto promedio de compra
* Valoración promedio
* Cantidad de clientes

### Filtros interactivos

* Género
* Tipo de envío
* Talla del producto

### Visualizaciones incluidas

* Ventas por **localidad y categoría**
* **Top 7 productos más vendidos**
* Porcentaje de **clientes suscriptos**
* Distribución de **métodos de pago**
* Cantidad de clientes por **grupo etario**
* Cantidad de ventas por **categoría**

> El diseño prioriza claridad visual, contraste de colores y una lectura rápida de los indicadores clave.

---

## 📂 Estructura del proyecto

```text
patrones-comportamiento-clientes/
│   README.md
│
├───data
│   │   customer_shopping_behavior_filtered.csv
│   │   SQLQuery-comportamiento-clientes.sql
│   │
│   └───raw_data
│           customer_shopping_behavior.csv
│
└───src
    │   ds-analisis.ipynb
    │   filtrado.py
    │
    └───dashboard
            Claro - Ruby Zafiro.json
            dashboard_ventas.pbix
```

---

## <img width="30px" src="https://github.com/tandpfun/skill-icons/blob/main/icons/Python-Dark.svg" title="Python"/> Procesamiento y Limpieza de Datos

El procesamiento de datos incluye:

* Conversión y normalización de tipos de datos
* Eliminación de registros inconsistentes
* Tratamiento de valores nulos
* Creación de **grupos etarios**
* Preparación del dataset para análisis y visualización

Todo el proceso se encuentra documentado en el script `filtrado.py`.

---

## <img width="30px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/jupyter/jupyter-original.svg" title="Jupyter"/> Análisis Exploratorio de Datos (EDA)

El notebook contiene:
* Carga del dataset filtrado
* Inspección de la estructura del dataframe (df.info())
* Revisión de tipos de datos y valores nulos

---

## <img width="30px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/microsoftsqlserver/microsoftsqlserver-plain.svg" title="SQL Server"/> Consultas SQL Incluidas

El archivo SQL permite:

* Obtener productos más vendidos
* Analizar ventas por categoría
* Calcular montos promedio y totales
* Evaluar comportamiento según descuentos
* Comparar tipos de envío
* Generar rankings por calificación

Las consultas están pensadas para facilitar análisis rápidos y reutilizables.

---

## 🚀 Tecnologías Utilizadas

- <img width="30px" src="https://github.com/tandpfun/skill-icons/blob/main/icons/Python-Dark.svg" title="Python"/> **Python** (pandas, numpy, matplotlib, seaborn) 
- <img width="30px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/microsoftsqlserver/microsoftsqlserver-plain.svg" title="SQL Server"/> **SQL Server**
- <img width="30px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/jupyter/jupyter-original.svg" title="Jupyter"/> **Jupyter Notebook**
- <img width="30px" src="https://github.com/microsoft/PowerBI-Icons/blob/main/SVG/Power-BI.svg" title="Power BI"/> **Power BI** (en construcción)
- <img width="30px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-plain.svg" title="Git"/> **Git / GitHub**

---

📈 *Este proyecto demuestra un flujo completo de análisis de datos: desde datos crudos hasta insights visuales listos para la toma de decisiones.*
