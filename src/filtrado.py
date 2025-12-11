import pandas as pd

df = pd.read_csv('../data/raw data/customer_shopping_behavior.csv')

#Formateo el nombre de todas las columnas para que todas tengan el mismo formato.
df.columns = df.columns.str.lower()
df.columns = df.columns.str.replace(' ', '_')

#Remplazo todos los valores nulos de Review Rating por la mediana de su respectiva categoria.
df['review_rating'] = df.groupby('category')['review_rating'].transform(lambda x: x.fillna(x.median()))

#Genero grupos para para clasificar personas por su edad segun el diguiente criterio:
#  - "Young Adults (18–25)",
#  - "Adults (26–35)",
#  - "Middle-Aged Adults (36–50)",
#  - "Older Adults (51–60)",
#  - "Seniors (61–70)"

age_groups = ["Young Adults", "Adults", "Middle-Aged Adults", "Older Adults", "Seniors"]
df['age_group'] = pd.qcut(df['age'], q=5, labels=age_groups)

#Al ser todos los valores de las columnas promo_code_used y discount_applied iguales elimino la columna promo_code_used debido a que llega a ser redundante.
df = df.drop('promo_code_used', axis=1)

#Modifico el nombre de la columna para evitar posibles errores futuros en SQL Sever
df = df.rename(columns={'purchase_amount_(usd)':'purchase_amount'})

#Almaceno los datos filtrados en un nuevo csv para no pisar el anterior.
df.to_csv('../data/customer_shopping_behavior_filtered.csv')