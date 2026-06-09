import duckdb
con = duckdb.connect()
# On lance la requête numéro 3 sur notre fichier CSV
print(con.execute("SELECT Churn, COUNT(*), ROUND(SUM(MonthlyCharges), 2) FROM 'data/churn_data.csv' GROUP BY Churn;").df())