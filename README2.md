Proyecto dbt – Clase 5
📌 Descripción

Este proyecto implementa un pipeline de transformación en dbt utilizando datos provenientes de la API JSONPlaceholder (posts y users), cargados a MotherDuck mediante Airbyte.

Se implementa una arquitectura por capas:

Sources

Staging

Intermediate

Marts (modelo dimensional)
📂 Capas implementadas
🔹 Sources

jsonplaceholder.posts

jsonplaceholder.users

Definidos en _sources.yml.

🔹 Staging

stg_posts

stg_users

Transformaciones:

Cast de IDs

Normalización de nombres de columnas

Inclusión de campo loaded_at

🔹 Intermediate

int_posts_enriched

Join entre posts y users para enriquecer los datos.

🔹 Marts

Modelo dimensional compuesto por:

dim_post

fct_post

Separación en dimensión y tabla de hechos.

📊 DAG generado por dbt docs

El grafo de dependencias fue generado con: 
dbt docs generate
dbt docs serve
Incluye:

2 modelos staging

1 modelo intermediate

2 modelos mart

2 sources
⚙️ Tecnologías utilizadas

dbt

DuckDB / MotherDuck

Airbyte

JSONPlaceholder API