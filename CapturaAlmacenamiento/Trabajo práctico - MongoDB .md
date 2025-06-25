# Trabajo práctico - MongoDB y análisis de acciones con los filtros de Benjamin Graham

---

## Descripción

Este script obtiene datos financieros de acciones del S&P 500, calcula indicadores clásicos de inversión de valor según Benjamin Graham, y guarda los resultados en formato JSON. Luego, los datos se importan a MongoDB en dos colecciones: 

- `empresas` (datos fundamentales por empresa)  
- `dividendos` (registros históricos de dividendos por empresa)

Finalmente, se realiza una consulta agregada que combina ambas colecciones para filtrar empresas y agrupar resultados.

---

## Relación 1 a N

- Una empresa (`empresas`) puede tener múltiples registros históricos en la colección `dividendos`, reflejando así la relación 1 a N.

---

## Consulta

- **Filtro:** Empresas con P/E < 15 y dividend yield > 0.02  
- **Agregación:** Promedio de EPS por sector económico  
- **Join:** Se usa `$lookup` para unir datos entre `empresas` y `dividendos`, y `$unwind` para procesar los registros anidados.

---

## Requisitos

- MongoDB corriendo localmente  
- Python 3.x con librerías: `yfinance`, `pymongo`, `requests`, `bs4`

---

## Archivos

- `empresas_sp500_sample.json`: datos fundamentales en formato JSON  
- `dividendos_sp500_sample.json`: datos históricos de dividendos en JSON  
- `graham_screener_mongodb.ipybn`: código para descargar datos fundamentales y exportarlos a JSON  
